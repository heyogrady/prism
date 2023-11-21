# frozen_string_literal: true

require_relative "test_helper"

module Prism
  class PatternTest < TestCase
    def test_invalid_syntax
      assert_raise(Pattern::UnsupportedPatternError) { scan("", "<>") }
    end

    def test_invalid_constant
      assert_raise(Pattern::NameError) { scan("", "Foo") }
    end

    def test_invalid_nested_constant
      assert_raise(Pattern::NameError) { scan("", "Foo::Bar") }
    end

    def test_regexp_with_interpolation
      assert_raise(Pattern::UnsupportedPatternError) { scan("", "/\#{foo}/") }
    end

    def test_string_with_interpolation
      assert_raise(Pattern::UnsupportedPatternError) { scan("", '"#{foo}"') }
    end

    def test_symbol_with_interpolation
      assert_raise(Pattern::UnsupportedPatternError) { scan("", ":\"\#{foo}\"") }
    end

    def test_invalid_node
      assert_raise(Pattern::UnsupportedPatternError) { scan("", "IntegerNode[^foo]") }
    end

    def test_self
      assert_raise(Pattern::UnsupportedPatternError) { scan("", "self") }
    end

    def test_array_pattern_no_constant
      results = scan("1 + 2", "ArgumentsNode[arguments: [IntegerNode]]")

      assert_equal 1, results.length
    end

    def test_array_pattern
      results = scan("1 + 2", "CallNode[name: :+, receiver: IntegerNode, arguments: { arguments: [IntegerNode] }]")

      assert_equal 1, results.length
    end

    def test_alternation_pattern
      results = scan("Foo + Bar + 1", "ConstantReadNode | IntegerNode")

      assert_equal 3, results.length
      assert_equal 1, results.grep(IntegerNode).first.value
    end

    def test_constant_read_node
      results = scan("Foo + Bar + Baz", "ConstantReadNode")

      assert_equal 3, results.length
      assert_equal %w[Bar Baz Foo], results.map(&:slice).sort
    end

    def test_constant_path
      results = scan("Foo + Bar + Baz", "Prism::ConstantReadNode")

      assert_equal 3, results.length
    end

    def test_hash_pattern_regexp
      results = scan("Foo + Bar + Baz", "CallNode[name: /^[[:punct:]]$/]")

      assert_equal 2, results.length
      assert_equal ["Prism::CallNode"], results.map { |node| node.class.name }.uniq
    end

    def test_nil
      results = scan("foo", "CallNode[receiver: nil]")

      assert_equal 1, results.length
    end

    def test_regexp_options
      results = scan("@foo + @bar + @baz", "InstanceVariableReadNode[name: /^@B/i]")

      assert_equal 2, results.length
    end

    def test_symbol_plain
      results = scan("@foo", "InstanceVariableReadNode[name: :\"@foo\"]")

      assert_equal 1, results.length
    end

    def test_symbol
      results = scan("@foo", "InstanceVariableReadNode[name: :@foo]")

      assert_equal 1, results.length
    end

    private

    def scan(source, query)
      Prism::Pattern.new(query).tap(&:compile).scan(Prism.parse(source).value).to_a
    end
  end
end
