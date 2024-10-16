#frozen_string_literal: true
require_relative 'test_result'

class TestCase
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def set_up; end
  def tear_down; end

  def run
    result = TestResult.new
    result.test_started
    set_up
    begin
      send(@name)
    rescue Exception => e
      p e
      result.test_failed
    end
    tear_down
    result
  end
end
