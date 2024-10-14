
require 'minitest/autorun'
require './lib/was_run'
require './lib/test_case'


# class TestCaseTest < Minitest::Test
class TestCaseTest < TestCase
  include Minitest::Assertions
  attr_accessor :assertions

  def initialize(name)
    super(name)
    @assertions = 0
  end
  def test_running
    test = WasRun.new("test_method")
    assert_nil test.was_run
    test.run
    assert test.was_run
  end
end

TestCaseTest.new("test_running").run
