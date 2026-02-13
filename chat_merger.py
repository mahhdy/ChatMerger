#!/usr/bin/env python3
"""
Chat Merger Tool
================
Merges segmented/broken AI responses from exported chat JSON into
clean Markdown (MD/MDX) files.

Usage:
    python chat_merger.py input.json [--output output.md] [--config config.yaml]
    python chat_merger.py input.json --interactive
    python chat_merger.py --help
"""

import json
import re
import sys
import os
import argparse
import logging
from dataclasses import dataclass, field
from enum import Enum, auto
from pathlib import Path
from typing import Optional

try:
    import yaml
except ImportError:
    yaml = None

try:
    from rapidfuzz import fuzz
    HAS_RAPIDFUZZ = True
except ImportError:
    HAS_RAPIDFUZZ = False

try:
    from rich.console import Console
    from rich.panel import Panel
    from rich.prompt import Prompt, Confirm
    from rich.syntax import Syntax
    from rich.table import Table
    from rich import print as rprint
    HAS_RICH = True
    console = Console()
except ImportError:
    HAS_RICH = False
    console = None


# ---------------------------------------------------------------------------
#  Configuration
# ---------------------------------------------------------------------------

DEFAULT_CONTINUATION_COMMANDS = [
    "continue", "go on", "keep going", "yes", "please continue",
    "go ahead", "next", "more", "proceed", "do it", "ok", "sure",
    "alright", "and?",
    "\u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u0647",
    "\u0627\u062F\u0627\u0645\u0647",
    "\u0628\u0644\u0647",
    "\u0622\u0631\u0647",
    "\u0628\u0639\u062F\u06CC",
    "\u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u06CC\u062F",
    "\u0644\u0637\u0641\u0627 \u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u0647",
    "\u0644\u0637\u0641\u0627\u064B \u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u0647",
    "\u0644\u0637\u0641\u0627 \u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u06CC\u062F",
]


@dataclass
class OverlapConfig:
    min_overlap_chars: int = 50
    similarity_threshold: float = 0.82
    scan_window_chars: int = 500


@dataclass
class OutputConfig:
    format: str = "md"
    include_metadata: bool = True
    include_timestamps: bool = True
    flag_overlaps_only: bool = False
    overlap_marker: str = "<!-- POSSIBLE OVERLAP - REVIEW MANUALLY -->"
    manual_marker: str = "<!-- MANUAL INTERVENTION NEEDED -->"


@dataclass
class Config:
    continuation_commands: list = field(
        default_factory=lambda: list(DEFAULT_CONTINUATION_COMMANDS)
    )
    short_followup_max_words: int = 40
    overlap: OverlapConfig = field(default_factory=OverlapConfig)
    output: OutputConfig = field(default_factory=OutputConfig)
    log_level: str = "INFO"

    @classmethod
    def from_yaml(cls, path: str) -> 'Config':
        if yaml is None:
            logging.warning("PyYAML not installed. Using default config.")
            return cls()
        try:
            with open(path, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)
            if not data:
                return cls()
            cfg = cls()
            if 'continuation_commands' in data:
                cfg.continuation_commands = data['continuation_commands']
            if 'short_followup_max_words' in data:
                cfg.short_followup_max_words = data['short_followup_max_words']
            if 'overlap_detection' in data:
                od = data['overlap_detection']
                cfg.overlap = OverlapConfig(
                    min_overlap_chars=od.get('min_overlap_chars', 50),
                    similarity_threshold=od.get('similarity_threshold', 0.82),
                    scan_window_chars=od.get('scan_window_chars', 500),
                )
            if 'output' in data:
                out = data['output']
                cfg.output = OutputConfig(
                    format=out.get('format', 'md'),
                    include_metadata=out.get('include_metadata', True),
                    include_timestamps=out.get('include_timestamps', True),
                    flag_overlaps_only=out.get('flag_overlaps_only', False),
                    overlap_marker=out.get('overlap_marker', cfg.output.overlap_marker),
                    manual_marker=out.get('manual_marker', cfg.output.manual_marker),
                )
            if 'log_level' in data:
                cfg.log_level = data['log_level']
            return cfg
        except Exception as e:
            logging.warning(f"Failed to load config from {path}: {e}. Using defaults.")
            return cls()


# ---------------------------------------------------------------------------
#  Data structures
# ---------------------------------------------------------------------------

class MessageRole(Enum):
    USER = auto()
    ASSISTANT = auto()


class UserMessageType(Enum):
    ORIGINAL_REQUEST = auto()
    CONTINUATION_COMMAND = auto()
    SHORT_FOLLOWUP = auto()
    NEW_REQUEST = auto()


@dataclass
class RawMessage:
    role: MessageRole
    text: str
    metadata: dict = field(default_factory=dict)
    index: int = 0


@dataclass
class OverlapInfo:
    start_in_prev: int
    end_in_prev: int
    start_in_next: int
    end_in_next: int
    overlapping_text: str
    similarity: float
    auto_resolved: bool = False
    flagged: bool = False


@dataclass
class MergedBlock:
    user_text: str
    sub_requests: list = field(default_factory=list)
    assistant_text: str = ""
    overlaps_found: list = field(default_factory=list)
    needs_manual_review: bool = False
    manual_review_reasons: list = field(default_factory=list)
    segment_count: int = 0
    model: str = ""



# ---------------------------------------------------------------------------
#  JSON Parser
# ---------------------------------------------------------------------------

class ChatParser:
    def __init__(self):
        self.logger = logging.getLogger("ChatParser")

    def parse(self, filepath: str) -> list:
        with open(filepath, 'r', encoding='utf-8') as f:
            data = json.load(f)

        messages = []

        if isinstance(data, dict) and 'messages' in data:
            messages = self._parse_messages_array(data['messages'])
        elif isinstance(data, list):
            messages = self._parse_messages_array(data)
        elif isinstance(data, dict) and 'conversations' in data:
            for conv in data['conversations']:
                if 'messages' in conv:
                    messages.extend(self._parse_messages_array(conv['messages']))
        else:
            raise ValueError(
                "Unrecognized JSON format. Expected 'messages' array "
                "or direct array of message objects."
            )

        self.logger.info(f"Parsed {len(messages)} messages from {filepath}")
        return messages

    def _parse_messages_array(self, arr: list) -> list:
        messages = []
        for i, msg in enumerate(arr):
            role_str = msg.get('role', '').lower()
            if role_str == 'user':
                role = MessageRole.USER
            elif role_str == 'assistant':
                role = MessageRole.ASSISTANT
            elif role_str == 'system':
                continue
            else:
                self.logger.warning(f"Unknown role '{role_str}' at index {i}, skipping.")
                continue

            text = self._extract_text(msg.get('content', ''))
            metadata = msg.get('metadata', {})

            if text.strip():
                messages.append(RawMessage(
                    role=role, text=text, metadata=metadata, index=i,
                ))
        return messages

    def _extract_text(self, content) -> str:
        if isinstance(content, str):
            return content
        if isinstance(content, list):
            parts = []
            for item in content:
                if isinstance(item, str):
                    parts.append(item)
                elif isinstance(item, dict):
                    if item.get('type') == 'text':
                        parts.append(item.get('text', ''))
                    elif 'text' in item:
                        parts.append(item['text'])
            return '\n'.join(parts)
        if isinstance(content, dict):
            if 'text' in content:
                return content['text']
            if 'parts' in content:
                return '\n'.join(str(p) for p in content['parts'])
        return str(content) if content else ''


# ---------------------------------------------------------------------------
#  Message Classifier
# ---------------------------------------------------------------------------

class MessageClassifier:
    def __init__(self, config: Config):
        self.config = config
        self.logger = logging.getLogger("MessageClassifier")
        self._commands_normalized = set()
        for cmd in config.continuation_commands:
            self._commands_normalized.add(self._normalize(cmd))

    def _normalize(self, text: str) -> str:
        text = text.strip().lower()
        text = re.sub(r'[.!?,;:\-\u2013\u2014\s]+', ' ', text).strip()
        return text

    def classify(self, text: str, context_prev_user: Optional[str] = None) -> UserMessageType:
        normalized = self._normalize(text)

        if normalized in self._commands_normalized:
            return UserMessageType.CONTINUATION_COMMAND

        for cmd in self._commands_normalized:
            if normalized.startswith(cmd) and len(normalized) < len(cmd) + 15:
                return UserMessageType.CONTINUATION_COMMAND

        words = text.strip().split()
        if len(words) <= self.config.short_followup_max_words:
            if self._looks_like_followup(text, context_prev_user):
                return UserMessageType.SHORT_FOLLOWUP

        if len(words) > self.config.short_followup_max_words:
            return UserMessageType.NEW_REQUEST

        if len(words) <= 15:
            return UserMessageType.SHORT_FOLLOWUP

        return UserMessageType.NEW_REQUEST

    def _looks_like_followup(self, text: str, context: Optional[str]) -> bool:
        text_lower = text.strip().lower()
        if text_lower.startswith(('what about', 'how about', 'and ',
                                   'also ', 'what if',
                                   '\u0622\u06CC\u0627',
                                   '\u0647\u0645\u0686\u0646\u06CC\u0646',
                                   '\u0648 ',
                                   '\u062F\u0631 \u0645\u0648\u0631\u062F',
                                   '\u0686\u0637\u0648\u0631')):
            return True
        if len(text.split()) <= 10:
            return True
        return False



# ---------------------------------------------------------------------------
#  JSON Parser
# ---------------------------------------------------------------------------

class ChatParser:
    def __init__(self):
        self.logger = logging.getLogger("ChatParser")

    def parse(self, filepath: str) -> list:
        with open(filepath, 'r', encoding='utf-8') as f:
            data = json.load(f)

        messages = []

        if isinstance(data, dict) and 'messages' in data:
            messages = self._parse_messages_array(data['messages'])
        elif isinstance(data, list):
            messages = self._parse_messages_array(data)
        elif isinstance(data, dict) and 'conversations' in data:
            for conv in data['conversations']:
                if 'messages' in conv:
                    messages.extend(self._parse_messages_array(conv['messages']))
        else:
            raise ValueError(
                "Unrecognized JSON format. Expected 'messages' array "
                "or direct array of message objects."
            )

        self.logger.info(f"Parsed {len(messages)} messages from {filepath}")
        return messages

    def _parse_messages_array(self, arr: list) -> list:
        messages = []
        for i, msg in enumerate(arr):
            role_str = msg.get('role', '').lower()
            if role_str == 'user':
                role = MessageRole.USER
            elif role_str == 'assistant':
                role = MessageRole.ASSISTANT
            elif role_str == 'system':
                continue
            else:
                self.logger.warning(f"Unknown role '{role_str}' at index {i}, skipping.")
                continue

            text = self._extract_text(msg.get('content', ''))
            metadata = msg.get('metadata', {})

            if text.strip():
                messages.append(RawMessage(
                    role=role, text=text, metadata=metadata, index=i,
                ))
        return messages

    def _extract_text(self, content) -> str:
        if isinstance(content, str):
            return content
        if isinstance(content, list):
            parts = []
            for item in content:
                if isinstance(item, str):
                    parts.append(item)
                elif isinstance(item, dict):
                    if item.get('type') == 'text':
                        parts.append(item.get('text', ''))
                    elif 'text' in item:
                        parts.append(item['text'])
            return '\n'.join(parts)
        if isinstance(content, dict):
            if 'text' in content:
                return content['text']
            if 'parts' in content:
                return '\n'.join(str(p) for p in content['parts'])
        return str(content) if content else ''


# ---------------------------------------------------------------------------
#  Message Classifier
# ---------------------------------------------------------------------------

class MessageClassifier:
    def __init__(self, config: Config):
        self.config = config
        self.logger = logging.getLogger("MessageClassifier")
        self._commands_normalized = set()
        for cmd in config.continuation_commands:
            self._commands_normalized.add(self._normalize(cmd))

    def _normalize(self, text: str) -> str:
        text = text.strip().lower()
        text = re.sub(r'[.!?,;:\-\u2013\u2014\s]+', ' ', text).strip()
        return text

    def classify(self, text: str, context_prev_user: Optional[str] = None) -> UserMessageType:
        normalized = self._normalize(text)

        if normalized in self._commands_normalized:
            return UserMessageType.CONTINUATION_COMMAND

        for cmd in self._commands_normalized:
            if normalized.startswith(cmd) and len(normalized) < len(cmd) + 15:
                return UserMessageType.CONTINUATION_COMMAND

        words = text.strip().split()
        if len(words) <= self.config.short_followup_max_words:
            if self._looks_like_followup(text, context_prev_user):
                return UserMessageType.SHORT_FOLLOWUP

        if len(words) > self.config.short_followup_max_words:
            return UserMessageType.NEW_REQUEST

        if len(words) <= 15:
            return UserMessageType.SHORT_FOLLOWUP

        return UserMessageType.NEW_REQUEST

    def _looks_like_followup(self, text: str, context: Optional[str]) -> bool:
        text_lower = text.strip().lower()
        if text_lower.startswith(('what about', 'how about', 'and ',
                                   'also ', 'what if',
                                   '\u0622\u06CC\u0627',
                                   '\u0647\u0645\u0686\u0646\u06CC\u0646',
                                   '\u0648 ',
                                   '\u062F\u0631 \u0645\u0648\u0631\u062F',
                                   '\u0686\u0637\u0648\u0631')):
            return True
        if len(text.split()) <= 10:
            return True
        return False



# ---------------------------------------------------------------------------
#  Overlap Detector
# ---------------------------------------------------------------------------

class OverlapDetector:
    def __init__(self, config: OverlapConfig):
        self.config = config
        self.logger = logging.getLogger("OverlapDetector")

    def find_overlap(self, prev_text: str, next_text: str) -> Optional[OverlapInfo]:
        if not prev_text or not next_text:
            return None

        window = self.config.scan_window_chars
        prev_tail = prev_text[-window:] if len(prev_text) > window else prev_text
        next_head = next_text[:window] if len(next_text) > window else next_text

        overlap = self._find_exact_overlap(prev_tail, next_head)
        if overlap and len(overlap) >= self.config.min_overlap_chars:
            start_in_prev = len(prev_text) - len(prev_tail) + prev_tail.rfind(overlap)
            return OverlapInfo(
                start_in_prev=start_in_prev,
                end_in_prev=start_in_prev + len(overlap),
                start_in_next=0,
                end_in_next=next_head.find(overlap) + len(overlap),
                overlapping_text=overlap,
                similarity=1.0,
                auto_resolved=True,
            )

        overlap_info = self._find_line_overlap(prev_tail, next_head)
        if overlap_info:
            return overlap_info

        if HAS_RAPIDFUZZ:
            overlap_info = self._find_fuzzy_overlap(prev_tail, next_head)
            if overlap_info:
                return overlap_info

        return None

    def _find_exact_overlap(self, prev_tail: str, next_head: str) -> Optional[str]:
        min_len = self.config.min_overlap_chars
        max_check = min(len(prev_tail), len(next_head))

        for length in range(max_check, min_len - 1, -1):
            suffix = prev_tail[-length:]
            if next_head.startswith(suffix):
                return suffix

        for length in range(max_check, min_len - 1, -1):
            prefix = next_head[:length]
            idx = prev_tail.find(prefix)
            if idx >= 0 and idx + length == len(prev_tail):
                return prefix

        return None

    def _find_line_overlap(self, prev_tail: str, next_head: str) -> Optional[OverlapInfo]:
        prev_lines = prev_tail.strip().split('\n')
        next_lines = next_head.strip().split('\n')

        if not prev_lines or not next_lines:
            return None

        overlap_start_prev = -1
        overlap_start_next = -1

        for i in range(len(prev_lines) - 1, max(len(prev_lines) - 15, -1), -1):
            prev_line = prev_lines[i].strip()
            if len(prev_line) < 10:
                continue
            for j in range(min(15, len(next_lines))):
                next_line = next_lines[j].strip()
                if len(next_line) < 10:
                    continue
                if prev_line == next_line:
                    overlap_start_prev = i
                    overlap_start_next = j
                    break
                if HAS_RAPIDFUZZ:
                    sim = fuzz.ratio(prev_line, next_line) / 100.0
                    if sim >= self.config.similarity_threshold:
                        overlap_start_prev = i
                        overlap_start_next = j
                        break
            if overlap_start_prev >= 0:
                break

        if overlap_start_prev < 0:
            return None

        match_count = 0
        for offset in range(min(len(prev_lines) - overlap_start_prev,
                                len(next_lines) - overlap_start_next)):
            pl = prev_lines[overlap_start_prev + offset].strip()
            nl = next_lines[overlap_start_next + offset].strip()
            if pl == nl or (HAS_RAPIDFUZZ and
                            fuzz.ratio(pl, nl) / 100.0 >= self.config.similarity_threshold):
                match_count += 1
            else:
                break

        if match_count == 0:
            return None

        overlapping = '\n'.join(
            prev_lines[overlap_start_prev:overlap_start_prev + match_count]
        )

        if len(overlapping) < self.config.min_overlap_chars:
            return None

        return OverlapInfo(
            start_in_prev=prev_tail.find(prev_lines[overlap_start_prev].strip()),
            end_in_prev=len(prev_tail),
            start_in_next=0,
            end_in_next=next_head.find(
                next_lines[overlap_start_next + match_count - 1].strip()
            ) + len(next_lines[overlap_start_next + match_count - 1].strip()),
            overlapping_text=overlapping,
            similarity=0.95 if match_count > 1 else 0.85,
            auto_resolved=(match_count >= 2),
        )

    def _find_fuzzy_overlap(self, prev_tail: str, next_head: str) -> Optional[OverlapInfo]:
        if not HAS_RAPIDFUZZ:
            return None

        chunk_size = 100
        best_sim = 0
        best_overlap = None

        for i in range(max(0, len(prev_tail) - chunk_size * 5),
                       len(prev_tail), chunk_size // 2):
            prev_chunk = prev_tail[i:i + chunk_size]
            if len(prev_chunk) < self.config.min_overlap_chars:
                continue
            for j in range(0, min(chunk_size * 5, len(next_head)),
                           chunk_size // 2):
                next_chunk = next_head[j:j + chunk_size]
                if len(next_chunk) < self.config.min_overlap_chars:
                    continue
                sim = fuzz.ratio(prev_chunk, next_chunk) / 100.0
                if sim >= self.config.similarity_threshold and sim > best_sim:
                    best_sim = sim
                    best_overlap = OverlapInfo(
                        start_in_prev=i, end_in_prev=i + chunk_size,
                        start_in_next=j, end_in_next=j + chunk_size,
                        overlapping_text=next_chunk,
                        similarity=sim, auto_resolved=False, flagged=True,
                    )

        return best_overlap

    def merge_with_overlap_removal(self, prev_text: str, next_text: str,
                                     overlap: Optional[OverlapInfo],
                                     flag_only: bool = False) -> tuple:
        if overlap is None:
            return prev_text.rstrip() + "\n\n" + next_text.lstrip(), False

        if flag_only or overlap.flagged:
            return (
                prev_text.rstrip() + "\n\n"
                "<!-- POSSIBLE OVERLAP DETECTED (similarity: "
                f"{overlap.similarity:.0%}) - REVIEW BELOW -->\n\n"
                + next_text.lstrip()
            ), True

        if overlap.auto_resolved:
            clean_next = next_text[overlap.end_in_next:].lstrip()
            if clean_next:
                return prev_text.rstrip() + "\n\n" + clean_next, False
            else:
                return prev_text, False

        return (
            prev_text.rstrip() + "\n\n"
            "<!-- POSSIBLE OVERLAP - REVIEW MANUALLY -->\n\n"
            + next_text.lstrip()
        ), True


# ---------------------------------------------------------------------------
#  Core Merger
# ---------------------------------------------------------------------------

class ChatMerger:
    def __init__(self, config: Config, interactive: bool = False):
        self.config = config
        self.interactive = interactive
        self.classifier = MessageClassifier(config)
        self.overlap_detector = OverlapDetector(config.overlap)
        self.logger = logging.getLogger("ChatMerger")

    def merge(self, messages: list) -> list:
        blocks = []
        current_block: Optional[MergedBlock] = None
        assistant_segments = []
        prev_user_text = None

        i = 0
        while i < len(messages):
            msg = messages[i]

            if msg.role == MessageRole.USER:
                msg_type = self.classifier.classify(msg.text, prev_user_text)

                if self.interactive and msg_type == UserMessageType.SHORT_FOLLOWUP:
                    msg_type = self._ask_classification(msg.text, msg_type)

                if msg_type == UserMessageType.CONTINUATION_COMMAND:
                    self.logger.debug(f"Msg {i}: continuation cmd")
                    i += 1
                    continue

                elif msg_type == UserMessageType.SHORT_FOLLOWUP:
                    if current_block is not None:
                        if assistant_segments:
                            current_block.assistant_text = self._merge_segments(
                                assistant_segments
                            )
                            current_block.segment_count = len(assistant_segments)
                            assistant_segments = []
                        current_block.sub_requests.append(msg.text.strip())
                    else:
                        current_block = MergedBlock(user_text=msg.text.strip())
                        blocks.append(current_block)
                    prev_user_text = msg.text
                    i += 1
                    continue

                else:
                    if current_block is not None and assistant_segments:
                        merged, overlaps, needs_review = self._merge_segments_full(
                            assistant_segments
                        )
                        current_block.assistant_text = merged
                        current_block.segment_count = len(assistant_segments)
                        current_block.overlaps_found = overlaps
                        if needs_review:
                            current_block.needs_manual_review = True
                            current_block.manual_review_reasons.append(
                                "Overlap detection flagged some areas"
                            )
                        assistant_segments = []

                    current_block = MergedBlock(user_text=msg.text.strip())
                    blocks.append(current_block)
                    prev_user_text = msg.text

            elif msg.role == MessageRole.ASSISTANT:
                if current_block is None:
                    current_block = MergedBlock(user_text="[No user message found]")
                    current_block.needs_manual_review = True
                    current_block.manual_review_reasons.append(
                        "Assistant response without preceding user message"
                    )
                    blocks.append(current_block)

                assistant_segments.append(msg.text)

                if msg.metadata and 'model' in msg.metadata:
                    current_block.model = msg.metadata['model']

            i += 1

        if current_block is not None and assistant_segments:
            merged, overlaps, needs_review = self._merge_segments_full(
                assistant_segments
            )
            current_block.assistant_text = merged
            current_block.segment_count = len(assistant_segments)
            current_block.overlaps_found = overlaps
            if needs_review:
                current_block.needs_manual_review = True
                current_block.manual_review_reasons.append(
                    "Overlap detection flagged some areas"
                )

        self.logger.info(f"Created {len(blocks)} merged blocks")
        return blocks

    def _merge_segments(self, segments: list) -> str:
        if len(segments) == 1:
            return segments[0]
        merged, _, _ = self._merge_segments_full(segments)
        return merged

    def _merge_segments_full(self, segments: list) -> tuple:
        if not segments:
            return "", [], False
        if len(segments) == 1:
            return segments[0], [], False

        merged = segments[0]
        all_overlaps = []
        needs_review = False

        for i in range(1, len(segments)):
            overlap = self.overlap_detector.find_overlap(merged, segments[i])
            if overlap:
                all_overlaps.append(overlap)
                self.logger.info(
                    f"Overlap between seg {i-1} and {i}: "
                    f"{len(overlap.overlapping_text)} chars, "
                    f"sim {overlap.similarity:.0%}"
                )

            result, flagged = self.overlap_detector.merge_with_overlap_removal(
                merged, segments[i], overlap,
                flag_only=self.config.output.flag_overlaps_only
            )
            merged = result
            if flagged:
                needs_review = True

        return merged, all_overlaps, needs_review

    def _ask_classification(self, text: str, default: UserMessageType) -> UserMessageType:
        if not HAS_RICH:
            print(f"\n--- Ambiguous message ---")
            print(f"Text: {text.strip()[:200]}")
            choice = input("[c]ontinuation, [f]ollow-up, [n]ew request? ").strip().lower()
        else:
            console.print(Panel(text.strip()[:300], title="Ambiguous Message",
                                border_style="yellow"))
            choice = Prompt.ask("Classify as", choices=["c", "f", "n"], default="f")

        if choice == 'c':
            return UserMessageType.CONTINUATION_COMMAND
        elif choice == 'n':
            return UserMessageType.NEW_REQUEST
        return UserMessageType.SHORT_FOLLOWUP



# ---------------------------------------------------------------------------
#  Output Generator
# ---------------------------------------------------------------------------

class OutputGenerator:
    def __init__(self, config: Config):
        self.config = config
        self.logger = logging.getLogger("OutputGenerator")

    def generate(self, blocks: list, source_file: str = "") -> str:
        parts = []
        if self.config.output.include_metadata:
            parts.append(self._generate_frontmatter(blocks, source_file))
        parts.append(self._generate_summary(blocks))
        for i, block in enumerate(blocks):
            parts.append(self._generate_block(block, i + 1))
        return '\n'.join(parts)

    def _generate_frontmatter(self, blocks: list, source_file: str) -> str:
        models = set(b.model for b in blocks if b.model)
        total_segments = sum(b.segment_count for b in blocks)
        review_needed = sum(1 for b in blocks if b.needs_manual_review)
        lines = [
            "---",
            f'source: "{source_file}"',
            f"total_conversations: {len(blocks)}",
            f"total_segments_merged: {total_segments}",
            f"manual_review_needed: {review_needed}",
        ]
        if models:
            lines.append(f"models: [{', '.join(models)}]")
        lines.append("generated_by: chat-merger")
        lines.append("---")
        lines.append("")
        return '\n'.join(lines)

    def _generate_summary(self, blocks: list) -> str:
        total_segments = sum(b.segment_count for b in blocks)
        total_overlaps = sum(len(b.overlaps_found) for b in blocks)
        review_count = sum(1 for b in blocks if b.needs_manual_review)
        lines = [
            "# Chat Merger Report", "",
            "| Metric | Value |",
            "|--------|-------|",
            f"| Conversations | {len(blocks)} |",
            f"| Total segments merged | {total_segments} |",
            f"| Overlaps detected | {total_overlaps} |",
            f"| Blocks needing review | {review_count} |",
            "", "---", "",
        ]
        return '\n'.join(lines)

    def _generate_block(self, block: MergedBlock, number: int) -> str:
        lines = []
        lines.append(f"## Conversation {number}")
        if block.segment_count > 1:
            lines.append(f"*({block.segment_count} segments merged)*")
        if block.model:
            lines.append(f"*Model: {block.model}*")
        lines.append("")

        if block.needs_manual_review:
            lines.append(self.config.output.manual_marker)
            for reason in block.manual_review_reasons:
                lines.append(f"> **Review needed:** {reason}")
            lines.append("")

        lines.append("### Request")
        lines.append("")
        lines.append(block.user_text)
        lines.append("")

        if block.sub_requests:
            lines.append("### Follow-up additions")
            lines.append("")
            for j, sr in enumerate(block.sub_requests, 1):
                lines.append(f"**Follow-up {j}:** {sr}")
                lines.append("")

        lines.append("### Response")
        lines.append("")
        lines.append(block.assistant_text)
        lines.append("")

        if block.overlaps_found:
            lines.append("### Overlap Report")
            lines.append("")
            lines.append(f"*{len(block.overlaps_found)} overlap(s) detected:*")
            lines.append("")
            for k, ov in enumerate(block.overlaps_found, 1):
                status = "Auto-resolved" if ov.auto_resolved else "Flagged"
                lines.append(
                    f"- **Overlap {k}:** {len(ov.overlapping_text)} chars, "
                    f"similarity {ov.similarity:.0%}, {status}"
                )
            lines.append("")

        lines.append("---")
        lines.append("")
        return '\n'.join(lines)

    def write(self, content: str, filepath: str):
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        self.logger.info(f"Output written to {filepath}")


# ---------------------------------------------------------------------------
#  CLI & Main
# ---------------------------------------------------------------------------

def setup_logging(level: str = "INFO"):
    logging.basicConfig(
        level=getattr(logging, level.upper(), logging.INFO),
        format="%(asctime)s [%(name)s] %(levelname)s: %(message)s",
        datefmt="%H:%M:%S",
    )


def print_banner():
    banner = (
        "\n"
        "========================================\n"
        "         Chat Merger Tool v1.0          \n"
        "  Merge segmented AI chat responses     \n"
        "========================================\n"
    )
    if HAS_RICH:
        console.print(banner, style="bold cyan")
    else:
        print(banner)


def print_results_summary(blocks: list):
    if HAS_RICH:
        table = Table(title="Merge Results Summary")
        table.add_column("#", style="cyan", width=4)
        table.add_column("Request (preview)", style="white", width=40)
        table.add_column("Segments", style="green", width=10)
        table.add_column("Overlaps", style="yellow", width=10)
        table.add_column("Review?", style="red", width=8)

        for i, block in enumerate(blocks, 1):
            preview = block.user_text[:60].replace('\n', ' ')
            if len(block.user_text) > 60:
                preview += "..."
            table.add_row(
                str(i), preview, str(block.segment_count),
                str(len(block.overlaps_found)),
                "Yes" if block.needs_manual_review else "No",
            )
        console.print(table)
    else:
        print("\n=== Merge Results ===")
        for i, block in enumerate(blocks, 1):
            preview = block.user_text[:60].replace('\n', ' ')
            status = "REVIEW" if block.needs_manual_review else "OK"
            print(f"  [{i}] {preview}... | Seg: {block.segment_count} | {status}")
        print()


def main():
    parser = argparse.ArgumentParser(
        description="Merge segmented AI chat responses into clean Markdown.",
    )
    parser.add_argument("input", help="Input JSON file")
    parser.add_argument("--output", "-o", help="Output file path")
    parser.add_argument("--config", "-c", default="config.yaml", help="Config file")
    parser.add_argument("--format", "-f", choices=["md", "mdx"], help="Output format")
    parser.add_argument("--interactive", "-i", action="store_true",
                        help="Ask for clarification on ambiguous messages")
    parser.add_argument("--flag-overlaps", action="store_true",
                        help="Flag overlaps instead of auto-removing")
    parser.add_argument("--verbose", "-v", action="store_true", help="Debug logging")
    parser.add_argument("--dry-run", action="store_true", help="Preview without writing")

    args = parser.parse_args()

    config = Config()
    if os.path.exists(args.config):
        config = Config.from_yaml(args.config)

    if args.format:
        config.output.format = args.format
    if args.flag_overlaps:
        config.output.flag_overlaps_only = True
    if args.verbose:
        config.log_level = "DEBUG"

    setup_logging(config.log_level)
    logger = logging.getLogger("main")

    print_banner()

    input_path = Path(args.input)
    if not input_path.exists():
        logger.error(f"Input file not found: {args.input}")
        sys.exit(1)

    if args.output:
        output_path = Path(args.output)
    else:
        ext = config.output.format
        output_path = input_path.with_name(f"{input_path.stem}_merged.{ext}")

    print(f"Parsing: {input_path}")
    chat_parser = ChatParser()
    try:
        messages = chat_parser.parse(str(input_path))
    except (json.JSONDecodeError, ValueError) as e:
        logger.error(f"Failed to parse input: {e}")
        sys.exit(1)

    print(f"   Found {len(messages)} messages")

    print(f"Merging segments...")
    merger = ChatMerger(config, interactive=args.interactive)
    blocks = merger.merge(messages)

    print_results_summary(blocks)

    print(f"Generating output...")
    generator = OutputGenerator(config)
    output_content = generator.generate(blocks, source_file=str(input_path))

    if args.dry_run:
        print("\n--- DRY RUN: Output preview (first 2000 chars) ---")
        print(output_content[:2000])
        if len(output_content) > 2000:
            print(f"\n... ({len(output_content) - 2000} more chars)")
    else:
        generator.write(output_content, str(output_path))
        print(f"Output written to: {output_path}")
        print(f"   Total size: {len(output_content):,} characters")

    review_count = sum(1 for b in blocks if b.needs_manual_review)
    if review_count > 0:
        print(f"\n  {review_count} block(s) need manual review.")

    print("\nDone!")


if __name__ == "__main__":
    main()
