#!/usr/bin/env python3
"""
Post-Processor for Merged Output
=================================
Cleans up and enhances the merged markdown output.

Features:
  - Remove duplicate blank lines
  - Fix broken code blocks
  - Extract code blocks to separate files
  - Generate table of contents
  - Split large files into sections
  - Validate markdown structure

Usage:
    python post_process.py merged_output.md [options]
"""

import re
import sys
import os
import argparse
from pathlib import Path


def clean_blank_lines(text: str) -> str:
    """Remove excessive blank lines (max 2 consecutive)."""
    return re.sub(r'\n{4,}', '\n\n\n', text)


def fix_code_blocks(text: str) -> str:
    """Fix common code block issues."""
    # Fix unclosed code blocks
    backtick_count = text.count('```')
    if backtick_count % 2 != 0:
        # Find the last opening ``` without a closing one
        text += '\n```\n'

    # Fix code blocks with missing language tag after merge
    # Pattern: ``` immediately followed by code (no language)
    # Don't modify if there's already a language tag
    lines = text.split('\n')
    fixed_lines = []
    in_code = False

    for line in lines:
        if line.strip().startswith('```') and not in_code:
            in_code = True
        elif line.strip() == '```' and in_code:
            in_code = False
        fixed_lines.append(line)

    return '\n'.join(fixed_lines)


def extract_code_blocks(text: str, output_dir: str) -> tuple:
    """Extract code blocks to separate files. Returns (modified_text, files_created)."""
    os.makedirs(output_dir, exist_ok=True)

    pattern = r'```(\w*)\n(.*?)```'
    blocks = list(re.finditer(pattern, text, re.DOTALL))

    if not blocks:
        return text, []

    files_created = []
    modified = text

    for i, match in enumerate(reversed(blocks)):  # reverse to preserve indices
        lang = match.group(1) or 'txt'
        code = match.group(2).strip()

        if len(code) < 50:  # skip very short blocks
            continue

        # Determine file extension
        ext_map = {
            'python': '.py', 'py': '.py',
            'javascript': '.js', 'js': '.js',
            'typescript': '.ts', 'ts': '.ts',
            'latex': '.tex', 'tex': '.tex',
            'bash': '.sh', 'sh': '.sh',
            'powershell': '.ps1', 'ps1': '.ps1',
            'html': '.html', 'css': '.css',
            'json': '.json', 'yaml': '.yaml', 'yml': '.yaml',
            'sql': '.sql', 'rust': '.rs', 'go': '.go',
            'java': '.java', 'cpp': '.cpp', 'c': '.c',
            'markdown': '.md', 'md': '.md',
            'xml': '.xml', 'txt': '.txt',
        }
        ext = ext_map.get(lang.lower(), f'.{lang}' if lang else '.txt')

        filename = f"code_block_{len(blocks) - i:03d}{ext}"
        filepath = os.path.join(output_dir, filename)

        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(code)

        files_created.append(filepath)

        # Replace in text with reference
        replacement = (
            f'```{lang}\n'
            f'# [Code extracted to: {filename}]\n'
            f'# See: {filepath}\n'
            f'```'
        )
        modified = modified[:match.start()] + replacement + modified[match.end():]

    files_created.reverse()
    return modified, files_created


def generate_toc(text: str) -> str:
    """Generate a table of contents from markdown headers."""
    lines = text.split('\n')
    toc_lines = ["# Table of Contents\n"]

    for line in lines:
        match = re.match(r'^(#{1,4})\s+(.+)$', line.strip())
        if match:
            level = len(match.group(1))
            title = match.group(2).strip()

            # Create anchor
            anchor = re.sub(r'[^\w\s\u0600-\u06FF-]', '', title)
            anchor = anchor.strip().replace(' ', '-').lower()

            indent = '  ' * (level - 1)
            toc_lines.append(f"{indent}- [{title}](#{anchor})")

    if len(toc_lines) <= 1:
        return text

    toc = '\n'.join(toc_lines) + '\n\n---\n\n'

    # Insert after frontmatter if present
    if text.startswith('---'):
        # Find end of frontmatter
        end_idx = text.find('---', 3)
        if end_idx > 0:
            end_idx = text.index('\n', end_idx) + 1
            return text[:end_idx] + '\n' + toc + text[end_idx:]

    return toc + text


def split_by_conversations(text: str, output_dir: str) -> list:
    """Split a large merged file into separate files per conversation."""
    os.makedirs(output_dir, exist_ok=True)

    # Split by "## Conversation N" headers
    parts = re.split(r'(?=^## Conversation \d+)', text, flags=re.MULTILINE)

    # First part is header/frontmatter
    header = parts[0] if parts else ""
    conversations = parts[1:] if len(parts) > 1 else []

    if not conversations:
        print("No conversation markers found. Cannot split.")
        return []

    files = []
    for i, conv in enumerate(conversations, 1):
        filename = f"conversation_{i:03d}.md"
        filepath = os.path.join(output_dir, filename)

        content = header + conv
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)

        files.append(filepath)

    return files


def find_review_markers(text: str) -> list:
    """Find all manual review markers and their locations."""
    markers = []
    lines = text.split('\n')

    for i, line in enumerate(lines, 1):
        if 'MANUAL INTERVENTION' in line or 'OVERLAP' in line or 'REVIEW' in line:
            # Get context (2 lines before and after)
            start = max(0, i - 3)
            end = min(len(lines), i + 2)
            context = '\n'.join(lines[start:end])
            markers.append({
                'line': i,
                'marker': line.strip(),
                'context': context,
            })

    return markers


def validate_markdown(text: str) -> list:
    """Basic markdown validation. Returns list of issues."""
    issues = []
    lines = text.split('\n')

    # Check code block balance
    in_code = False
    code_start_line = 0
    for i, line in enumerate(lines, 1):
        stripped = line.strip()
        if stripped.startswith('```'):
            if not in_code:
                in_code = True
                code_start_line = i
            else:
                in_code = False

    if in_code:
        issues.append(f"Unclosed code block starting at line {code_start_line}")

    # Check for orphaned headers (header without content)
    for i, line in enumerate(lines):
        if re.match(r'^#{1,6}\s+', line.strip()):
            # Check if next non-empty line is also a header
            for j in range(i + 1, min(i + 3, len(lines))):
                next_line = lines[j].strip()
                if next_line and re.match(r'^#{1,6}\s+', next_line):
                    issues.append(
                        f"Line {i+1}: Header '{line.strip()[:50]}' "
                        f"has no content before next header"
                    )
                    break
                elif next_line:
                    break

    # Check frontmatter
    if text.startswith('---'):
        end = text.find('---', 3)
        if end < 0:
            issues.append("Unclosed frontmatter block")

    return issues


def main():
    parser = argparse.ArgumentParser(
        description="Post-process merged markdown output.",
    )
    parser.add_argument("input", help="Input markdown file")
    parser.add_argument("--output", "-o", help="Output file (default: overwrite input)")

    # Actions
    parser.add_argument("--clean", action="store_true",
                        help="Clean blank lines and fix code blocks")
    parser.add_argument("--toc", action="store_true",
                        help="Generate table of contents")
    parser.add_argument("--extract-code", metavar="DIR",
                        help="Extract code blocks to directory")
    parser.add_argument("--split", metavar="DIR",
                        help="Split by conversations into directory")
    parser.add_argument("--review", action="store_true",
                        help="Find and list all review markers")
    parser.add_argument("--validate", action="store_true",
                        help="Validate markdown structure")
    parser.add_argument("--all", action="store_true",
                        help="Run clean + toc + validate")

    args = parser.parse_args()

    input_path = Path(args.input)
    if not input_path.exists():
        print(f"Error: File not found: {args.input}")
        sys.exit(1)

    text = input_path.read_text(encoding='utf-8')
    original_size = len(text)
    modified = False

    print(f"Processing: {input_path} ({original_size:,} chars)")

    # Validate
    if args.validate or args.all:
        print("\n--- Validation ---")
        issues = validate_markdown(text)
        if issues:
            for issue in issues:
                print(f"  WARNING: {issue}")
        else:
            print("  No issues found.")

    # Review markers
    if args.review:
        print("\n--- Review Markers ---")
        markers = find_review_markers(text)
        if markers:
            for m in markers:
                print(f"\n  Line {m['line']}: {m['marker'][:80]}")
                print(f"  Context:\n    {m['context'][:200]}")
        else:
            print("  No review markers found.")

    # Clean
    if args.clean or args.all:
        print("\n--- Cleaning ---")
        text = clean_blank_lines(text)
        text = fix_code_blocks(text)
        modified = True
        print(f"  Cleaned. Size: {len(text):,} chars "
              f"(delta: {len(text) - original_size:+,})")

    # TOC
    if args.toc or args.all:
        print("\n--- Table of Contents ---")
        text = generate_toc(text)
        modified = True
        print("  TOC generated.")

    # Extract code
    if args.extract_code:
        print(f"\n--- Extracting Code Blocks ---")
        text, files = extract_code_blocks(text, args.extract_code)
        if files:
            modified = True
            print(f"  Extracted {len(files)} code blocks:")
            for f in files:
                print(f"    {f}")
        else:
            print("  No significant code blocks found.")

    # Split
    if args.split:
        print(f"\n--- Splitting Conversations ---")
        files = split_by_conversations(text, args.split)
        if files:
            print(f"  Split into {len(files)} files:")
            for f in files:
                print(f"    {f}")
        return

    # Write output
    if modified:
        output_path = Path(args.output) if args.output else input_path
        output_path.write_text(text, encoding='utf-8')
        print(f"\nOutput written to: {output_path} ({len(text):,} chars)")
    elif not (args.review or args.validate):
        print("\nNo modifications requested. Use --clean, --toc, --extract-code, --split, --all")


if __name__ == "__main__":
    main()
