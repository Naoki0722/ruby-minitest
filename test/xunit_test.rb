
require 'minitest/autorun'
require './lib/was_run'
require './lib/test_case'


# class TestCaseTest < Minitest::Test
class TestCaseTest < TestCase
  include Minitest::Assertions
  attr_accessor :assertions
  attr_reader :test

  def initialize(name)
    super(name)
    @assertions = 0
  end

  def set_up
    @test = WasRun.new("test_method")
  end

  def test_running
    test.run
    assert test.was_run
  end

  def test_set_up
    test.run
    assert test.was_setup
  end
end

TestCaseTest.new("test_running").run
TestCaseTest.new("test_set_up").run
