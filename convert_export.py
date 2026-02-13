#!/usr/bin/env python3
"""
Chat Export Converter
=====================
Converts various chat export formats to the standard format
expected by chat_merger.py.

Supported sources:
  - ChatGPT export (conversations.json)
  - Claude export (JSON)
  - Raw text with markers
  - Custom JSON structures

Usage:
    python convert_export.py input_file --source chatgpt -o output.json
    python convert_export.py input_file --source claude -o output.json
    python convert_export.py input_file --source auto -o output.json
"""

import json
import sys
import os
import re
import argparse
import logging
from pathlib import Path
from datetime import datetime


logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(name)s] %(levelname)s: %(message)s",
    datefmt="%H:%M:%S",
)
logger = logging.getLogger("converter")


def detect_format(data) -> str:
    """Auto-detect the format of the input data."""

    # ChatGPT conversations.json
    if isinstance(data, list) and len(data) > 0:
        first = data[0]
        if isinstance(first, dict):
            if 'mapping' in first and 'title' in first:
                return 'chatgpt'
            if 'role' in first and 'content' in first:
                return 'standard_array'
            if 'uuid' in first and 'chat_messages' in first:
                return 'claude_project'

    if isinstance(data, dict):
        if 'messages' in data:
            msgs = data['messages']
            if isinstance(msgs, list) and len(msgs) > 0:
                first_msg = msgs[0]
                if isinstance(first_msg, dict) and 'role' in first_msg:
                    return 'standard'

        if 'mapping' in data and 'title' in data:
            return 'chatgpt_single'

        if 'chat_messages' in data:
            return 'claude_single'

        if 'conversations' in data:
            return 'multi_conversation'

    return 'unknown'


def convert_chatgpt(data) -> dict:
    """Convert ChatGPT conversations.json format."""
    all_messages = []

    conversations = data if isinstance(data, list) else [data]

    for conv in conversations:
        title = conv.get('title', 'Untitled')
        mapping = conv.get('mapping', {})

        # Build message tree
        messages_by_id = {}
        root_id = None

        for msg_id, msg_data in mapping.items():
            parent_id = msg_data.get('parent')
            message = msg_data.get('message')

            if message is None:
                if parent_id is None:
                    root_id = msg_id
                continue

            role = message.get('author', {}).get('role', '')
            content = message.get('content', {})

            text = ''
            if isinstance(content, dict):
                parts = content.get('parts', [])
                text_parts = []
                for part in parts:
                    if isinstance(part, str):
                        text_parts.append(part)
                    elif isinstance(part, dict) and 'text' in part:
                        text_parts.append(part['text'])
                text = '\n'.join(text_parts)
            elif isinstance(content, str):
                text = content

            if text.strip() and role in ('user', 'assistant'):
                messages_by_id[msg_id] = {
                    'id': msg_id,
                    'parent': parent_id,
                    'role': role,
                    'text': text,
                    'timestamp': message.get('create_time'),
                }

        # Traverse tree to get linear order
        ordered = []
        visited = set()

        def traverse(node_id):
            if node_id in visited:
                return
            visited.add(node_id)

            if node_id in messages_by_id:
                ordered.append(messages_by_id[node_id])

            # Find children
            for mid, mdata in mapping.items():
                if mdata.get('parent') == node_id and mid not in visited:
                    traverse(mid)

        if root_id:
            traverse(root_id)
        else:
            # Fallback: just use all messages sorted by timestamp
            ordered = sorted(
                messages_by_id.values(),
                key=lambda m: m.get('timestamp') or 0
            )

        for msg in ordered:
            entry = {
                "role": msg['role'],
                "content": [{"type": "text", "text": msg['text']}],
            }
            if msg.get('timestamp'):
                entry["metadata"] = {
                    "timestamp": msg['timestamp'],
                    "source_conversation": title,
                }
            all_messages.append(entry)

    return {"messages": all_messages}


def convert_claude(data) -> dict:
    """Convert Claude export format."""
    all_messages = []

    if isinstance(data, dict) and 'chat_messages' in data:
        conversations = [data]
    elif isinstance(data, list):
        conversations = data
    else:
        conversations = [data]

    for conv in conversations:
        chat_messages = conv.get('chat_messages', [])
        conv_name = conv.get('name', conv.get('title', 'Untitled'))

        for msg in chat_messages:
            role = msg.get('sender', msg.get('role', '')).lower()

            if role == 'human':
                role = 'user'

            if role not in ('user', 'assistant'):
                continue

            # Extract text
            text = ''
            content = msg.get('content', msg.get('text', ''))

            if isinstance(content, str):
                text = content
            elif isinstance(content, list):
                text_parts = []
                for item in content:
                    if isinstance(item, str):
                        text_parts.append(item)
                    elif isinstance(item, dict):
                        if item.get('type') == 'text':
                            text_parts.append(item.get('text', ''))
                        elif 'text' in item:
                            text_parts.append(item['text'])
                text = '\n'.join(text_parts)
            elif isinstance(content, dict):
                text = content.get('text', str(content))

            if text.strip():
                entry = {
                    "role": role,
                    "content": [{"type": "text", "text": text}],
                }

                metadata = {}
                if msg.get('created_at'):
                    metadata['timestamp'] = msg['created_at']
                if conv_name:
                    metadata['source_conversation'] = conv_name

                model = msg.get('model', conv.get('model'))
                if model:
                    metadata['model'] = model

                if metadata:
                    entry['metadata'] = metadata

                all_messages.append(entry)

    return {"messages": all_messages}


def convert_standard_array(data) -> dict:
    """Convert a direct array of messages."""
    messages = []
    for msg in data:
        role = msg.get('role', '').lower()
        if role not in ('user', 'assistant'):
            continue

        content = msg.get('content', '')
        if isinstance(content, str):
            content = [{"type": "text", "text": content}]
        elif isinstance(content, list):
            # Already in correct format or needs normalization
            normalized = []
            for item in content:
                if isinstance(item, str):
                    normalized.append({"type": "text", "text": item})
                elif isinstance(item, dict):
                    normalized.append(item)
            content = normalized

        entry = {"role": role, "content": content}
        if 'metadata' in msg:
            entry['metadata'] = msg['metadata']

        messages.append(entry)

    return {"messages": messages}


def convert_text_file(filepath: str) -> dict:
    """Convert a raw text file with markers to standard format.

    Expected format:
        USER: message text
        ASSISTANT: response text
        USER: continue
        ASSISTANT: more response
    """
    messages = []

    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Try to split by role markers
    pattern = r'(USER|ASSISTANT|Human|Assistant|کاربر|دستیار)\s*:\s*'
    parts = re.split(pattern, content, flags=re.IGNORECASE)

    # parts[0] is text before first marker (usually empty)
    # parts[1] is role, parts[2] is text, etc.
    i = 1
    while i < len(parts) - 1:
        role_raw = parts[i].strip().lower()
        text = parts[i + 1].strip()

        if role_raw in ('user', 'human', '\u06A9\u0627\u0631\u0628\u0631'):
            role = 'user'
        elif role_raw in ('assistant', '\u062F\u0633\u062A\u06CC\u0627\u0631'):
            role = 'assistant'
        else:
            i += 2
            continue

        if text:
            messages.append({
                "role": role,
                "content": [{"type": "text", "text": text}],
            })

        i += 2

    if not messages:
        logger.warning("No messages found with markers. Treating entire file as single user message.")
        messages.append({
            "role": "user",
            "content": [{"type": "text", "text": content.strip()}],
        })

    return {"messages": messages}


def convert(input_path: str, source: str = "auto") -> dict:
    """Main conversion function."""

    # Check if it's a text file
    if input_path.endswith(('.txt', '.text')):
        logger.info("Detected text file, using text converter.")
        return convert_text_file(input_path)

    # Load JSON
    with open(input_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # Auto-detect or use specified source
    if source == "auto":
        detected = detect_format(data)
        logger.info(f"Auto-detected format: {detected}")
    else:
        detected = source

    if detected == 'chatgpt' or detected == 'chatgpt_single':
        logger.info("Converting ChatGPT format...")
        return convert_chatgpt(data)

    elif detected in ('claude_single', 'claude_project'):
        logger.info("Converting Claude format...")
        return convert_claude(data)

    elif detected == 'standard':
        logger.info("Already in standard format, normalizing...")
        if isinstance(data.get('messages'), list):
            return convert_standard_array(data['messages'])
        return data

    elif detected == 'standard_array':
        logger.info("Converting standard array format...")
        return convert_standard_array(data)

    elif detected == 'multi_conversation':
        logger.info("Converting multi-conversation format...")
        all_msgs = []
        for conv in data.get('conversations', []):
            if 'messages' in conv:
                result = convert_standard_array(conv['messages'])
                all_msgs.extend(result.get('messages', []))
            elif 'chat_messages' in conv:
                result = convert_claude(conv)
                all_msgs.extend(result.get('messages', []))
        return {"messages": all_msgs}

    else:
        logger.warning(f"Unknown format '{detected}'. Attempting generic conversion...")
        # Try various strategies
        if isinstance(data, list):
            return convert_standard_array(data)
        if isinstance(data, dict) and 'messages' in data:
            return convert_standard_array(data['messages'])
        raise ValueError(f"Cannot convert format: {detected}")


def main():
    parser = argparse.ArgumentParser(
        description="Convert various chat export formats to standard format.",
    )
    parser.add_argument("input", help="Input file (JSON or TXT)")
    parser.add_argument("--source", "-s",
                        choices=["auto", "chatgpt", "claude", "text", "standard"],
                        default="auto",
                        help="Source format (default: auto-detect)")
    parser.add_argument("--output", "-o", help="Output JSON file path")
    parser.add_argument("--verbose", "-v", action="store_true", help="Verbose output")
    parser.add_argument("--stats", action="store_true", help="Show statistics")

    args = parser.parse_args()

    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)

    input_path = Path(args.input)
    if not input_path.exists():
        logger.error(f"Input file not found: {args.input}")
        sys.exit(1)

    # Determine output path
    if args.output:
        output_path = Path(args.output)
    else:
        output_path = input_path.with_name(f"{input_path.stem}_converted.json")

    try:
        result = convert(str(input_path), args.source)
    except Exception as e:
        logger.error(f"Conversion failed: {e}")
        sys.exit(1)

    # Write output
    with open(output_path, 'w', encoding='utf-8') as f:
        json.dump(result, f, ensure_ascii=False, indent=2)

    msg_count = len(result.get('messages', []))
    user_count = sum(1 for m in result.get('messages', []) if m.get('role') == 'user')
    asst_count = sum(1 for m in result.get('messages', []) if m.get('role') == 'assistant')

    print(f"Converted: {input_path}")
    print(f"Output:    {output_path}")
    print(f"Messages:  {msg_count} total ({user_count} user, {asst_count} assistant)")

    if args.stats:
        print(f"\nDetailed Statistics:")
        print(f"  Input file size:  {input_path.stat().st_size:,} bytes")
        print(f"  Output file size: {output_path.stat().st_size:,} bytes")

        # Message lengths
        lengths = [
            len(m['content'][0]['text']) if isinstance(m['content'], list) and m['content']
            else len(str(m['content']))
            for m in result.get('messages', [])
        ]
        if lengths:
            print(f"  Avg message length: {sum(lengths)//len(lengths):,} chars")
            print(f"  Max message length: {max(lengths):,} chars")
            print(f"  Total text:         {sum(lengths):,} chars")


if __name__ == "__main__":
    main()
