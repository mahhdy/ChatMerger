"""
Basic tests for Chat Merger Tool.
Run with: python -m pytest tests/ -v
Or simply: python tests/test_basic.py
"""
import json
import sys
import os
import tempfile

# Add parent dir to path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from chat_merger import (
    Config, ChatParser, MessageClassifier, MessageRole,
    UserMessageType, OverlapDetector, OverlapConfig,
    ChatMerger, OutputGenerator, RawMessage
)


def test_config_defaults():
    """Test that default config loads properly."""
    cfg = Config()
    assert len(cfg.continuation_commands) > 0
    assert cfg.short_followup_max_words == 40
    assert cfg.overlap.min_overlap_chars == 50
    print("  [PASS] test_config_defaults")


def test_config_from_yaml():
    """Test loading config from YAML."""
    cfg_path = os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
        "config.yaml"
    )
    if os.path.exists(cfg_path):
        cfg = Config.from_yaml(cfg_path)
        assert len(cfg.continuation_commands) > 0
        print("  [PASS] test_config_from_yaml")
    else:
        print("  [SKIP] test_config_from_yaml (no config.yaml)")


def test_classifier_english():
    """Test classification of English continuation commands."""
    cfg = Config()
    classifier = MessageClassifier(cfg)

    assert classifier.classify("continue") == UserMessageType.CONTINUATION_COMMAND
    assert classifier.classify("Continue") == UserMessageType.CONTINUATION_COMMAND
    assert classifier.classify("CONTINUE") == UserMessageType.CONTINUATION_COMMAND
    assert classifier.classify("yes") == UserMessageType.CONTINUATION_COMMAND
    assert classifier.classify("go on") == UserMessageType.CONTINUATION_COMMAND
    assert classifier.classify("ok") == UserMessageType.CONTINUATION_COMMAND
    print("  [PASS] test_classifier_english")


def test_classifier_farsi():
    """Test classification of Farsi continuation commands."""
    cfg = Config()
    classifier = MessageClassifier(cfg)

    assert classifier.classify("\u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u0647") == UserMessageType.CONTINUATION_COMMAND
    assert classifier.classify("\u0627\u062F\u0627\u0645\u0647") == UserMessageType.CONTINUATION_COMMAND
    assert classifier.classify("\u0628\u0644\u0647") == UserMessageType.CONTINUATION_COMMAND
    print("  [PASS] test_classifier_farsi")


def test_classifier_new_request():
    """Test that long messages are classified as new requests."""
    cfg = Config()
    classifier = MessageClassifier(cfg)

    long_msg = "Write me a comprehensive guide about Python decorators " * 5
    result = classifier.classify(long_msg)
    assert result == UserMessageType.NEW_REQUEST
    print("  [PASS] test_classifier_new_request")


def test_parser_format1():
    """Test parsing Format 1 (messages with content array)."""
    data = {
        "messages": [
            {
                "role": "user",
                "content": [{"type": "text", "text": "Hello"}]
            },
            {
                "role": "assistant",
                "content": [{"type": "text", "text": "Hi there!"}],
                "metadata": {"model": "test-model"}
            }
        ]
    }

    with tempfile.NamedTemporaryFile(mode='w', suffix='.json',
                                      delete=False, encoding='utf-8') as f:
        json.dump(data, f)
        temp_path = f.name

    try:
        parser = ChatParser()
        messages = parser.parse(temp_path)
        assert len(messages) == 2
        assert messages[0].role == MessageRole.USER
        assert messages[0].text == "Hello"
        assert messages[1].role == MessageRole.ASSISTANT
        assert messages[1].text == "Hi there!"
        assert messages[1].metadata.get("model") == "test-model"
        print("  [PASS] test_parser_format1")
    finally:
        os.unlink(temp_path)


def test_parser_format2():
    """Test parsing Format 2 (string content)."""
    data = {
        "messages": [
            {"role": "user", "content": "Hello"},
            {"role": "assistant", "content": "Hi!"}
        ]
    }

    with tempfile.NamedTemporaryFile(mode='w', suffix='.json',
                                      delete=False, encoding='utf-8') as f:
        json.dump(data, f)
        temp_path = f.name

    try:
        parser = ChatParser()
        messages = parser.parse(temp_path)
        assert len(messages) == 2
        assert messages[0].text == "Hello"
        assert messages[1].text == "Hi!"
        print("  [PASS] test_parser_format2")
    finally:
        os.unlink(temp_path)


def test_parser_format3():
    """Test parsing Format 3 (direct array)."""
    data = [
        {"role": "user", "content": "Hello"},
        {"role": "assistant", "content": "Hi!"}
    ]

    with tempfile.NamedTemporaryFile(mode='w', suffix='.json',
                                      delete=False, encoding='utf-8') as f:
        json.dump(data, f)
        temp_path = f.name

    try:
        parser = ChatParser()
        messages = parser.parse(temp_path)
        assert len(messages) == 2
        print("  [PASS] test_parser_format3")
    finally:
        os.unlink(temp_path)


def test_overlap_exact():
    """Test exact overlap detection."""
    cfg = OverlapConfig(min_overlap_chars=20, scan_window_chars=200)
    detector = OverlapDetector(cfg)

    prev = "This is the first part of the text. And here is the ending portion that overlaps."
    next_t = "the ending portion that overlaps. And this is new content after the overlap."

    overlap = detector.find_overlap(prev, next_t)
    assert overlap is not None
    assert overlap.auto_resolved == True
    assert "ending portion that overlaps" in overlap.overlapping_text
    print("  [PASS] test_overlap_exact")


def test_overlap_none():
    """Test when there is no overlap."""
    cfg = OverlapConfig(min_overlap_chars=20, scan_window_chars=200)
    detector = OverlapDetector(cfg)

    prev = "Completely different text number one."
    next_t = "Entirely separate text number two."

    overlap = detector.find_overlap(prev, next_t)
    assert overlap is None
    print("  [PASS] test_overlap_none")


def test_merger_basic():
    """Test basic merging with continuation commands."""
    cfg = Config()
    merger = ChatMerger(cfg)

    messages = [
        RawMessage(role=MessageRole.USER, text="Write about X", index=0),
        RawMessage(role=MessageRole.ASSISTANT, text="Part 1 of the answer.", index=1),
        RawMessage(role=MessageRole.USER, text="continue", index=2),
        RawMessage(role=MessageRole.ASSISTANT, text="Part 2 of the answer.", index=3),
        RawMessage(role=MessageRole.USER, text="\u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u0647", index=4),
        RawMessage(role=MessageRole.ASSISTANT, text="Part 3 of the answer.", index=5),
    ]

    blocks = merger.merge(messages)
    assert len(blocks) == 1, f"Expected 1 block, got {len(blocks)}"
    assert blocks[0].segment_count == 3
    assert "Part 1" in blocks[0].assistant_text
    assert "Part 2" in blocks[0].assistant_text
    assert "Part 3" in blocks[0].assistant_text
    print("  [PASS] test_merger_basic")


def test_merger_multiple_requests():
    """Test merging with multiple separate requests."""
    cfg = Config()
    merger = ChatMerger(cfg)

    messages = [
        RawMessage(role=MessageRole.USER, text="First question about topic A " * 5, index=0),
        RawMessage(role=MessageRole.ASSISTANT, text="Answer to A.", index=1),
        RawMessage(role=MessageRole.USER, text="Second question about topic B " * 5, index=2),
        RawMessage(role=MessageRole.ASSISTANT, text="Answer to B part 1.", index=3),
        RawMessage(role=MessageRole.USER, text="continue", index=4),
        RawMessage(role=MessageRole.ASSISTANT, text="Answer to B part 2.", index=5),
    ]

    blocks = merger.merge(messages)
    assert len(blocks) == 2, f"Expected 2 blocks, got {len(blocks)}"
    assert blocks[0].segment_count == 1
    assert blocks[1].segment_count == 2
    print("  [PASS] test_merger_multiple_requests")


def test_output_generator():
    """Test output generation."""
    from chat_merger import MergedBlock

    cfg = Config()
    generator = OutputGenerator(cfg)

    blocks = [
        MergedBlock(
            user_text="Test request",
            assistant_text="Test response part 1\n\nTest response part 2",
            segment_count=2,
            model="test-model",
        )
    ]

    output = generator.generate(blocks, source_file="test.json")
    assert "# Chat Merger Report" in output
    assert "## Conversation 1" in output
    assert "### Request" in output
    assert "Test request" in output
    assert "### Response" in output
    assert "Test response part 1" in output
    assert "2 segments merged" in output
    print("  [PASS] test_output_generator")


def test_end_to_end():
    """Full end-to-end test with a temporary JSON file."""
    data = {
        "messages": [
            {"role": "user", "content": [{"type": "text", "text": "Explain gravity"}]},
            {"role": "assistant", "content": [{"type": "text", "text": "Gravity is a force"}],
             "metadata": {"model": "test"}},
            {"role": "user", "content": [{"type": "text", "text": "continue"}]},
            {"role": "assistant", "content": [{"type": "text", "text": "that attracts objects"}],
             "metadata": {"model": "test"}},
            {"role": "user", "content": [{"type": "text", "text": "\u0627\u062F\u0627\u0645\u0647 \u0628\u062F\u0647"}]},
            {"role": "assistant", "content": [{"type": "text", "text": "with mass toward each other."}],
             "metadata": {"model": "test"}},
        ]
    }

    with tempfile.NamedTemporaryFile(mode='w', suffix='.json',
                                      delete=False, encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False)
        input_path = f.name

    output_path = input_path.replace('.json', '_merged.md')

    try:
        cfg = Config()
        parser = ChatParser()
        messages = parser.parse(input_path)
        assert len(messages) == 4  # 1 user + 3 assistant (continuations filtered by merger)

        merger = ChatMerger(cfg)
        blocks = merger.merge(messages)
        assert len(blocks) == 1
        assert blocks[0].segment_count == 3

        generator = OutputGenerator(cfg)
        output = generator.generate(blocks, source_file=input_path)
        generator.write(output, output_path)

        assert os.path.exists(output_path)
        content = open(output_path, 'r', encoding='utf-8').read()
        assert "Gravity is a force" in content
        assert "that attracts objects" in content
        assert "with mass toward each other" in content
        print("  [PASS] test_end_to_end")
    finally:
        if os.path.exists(input_path):
            os.unlink(input_path)
        if os.path.exists(output_path):
            os.unlink(output_path)


def run_all_tests():
    """Run all tests."""
    print("\n" + "=" * 50)
    print("  Chat Merger Tool - Test Suite")
    print("=" * 50 + "\n")

    tests = [
        test_config_defaults,
        test_config_from_yaml,
        test_classifier_english,
        test_classifier_farsi,
        test_classifier_new_request,
        test_parser_format1,
        test_parser_format2,
        test_parser_format3,
        test_overlap_exact,
        test_overlap_none,
        test_merger_basic,
        test_merger_multiple_requests,
        test_output_generator,
        test_end_to_end,
    ]

    passed = 0
    failed = 0
    errors = []

    for test_func in tests:
        try:
            test_func()
            passed += 1
        except Exception as e:
            failed += 1
            errors.append((test_func.__name__, str(e)))
            print(f"  [FAIL] {test_func.__name__}: {e}")

    print("\n" + "=" * 50)
    print(f"  Results: {passed} passed, {failed} failed, {len(tests)} total")
    print("=" * 50)

    if errors:
        print("\nFailed tests:")
        for name, err in errors:
            print(f"  - {name}: {err}")
        return 1
    else:
        print("\nAll tests passed!")
        return 0


if __name__ == '__main__':
    sys.exit(run_all_tests())
