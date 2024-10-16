#frozen_string_literal: true
require_relative 'test_case'


class WasRun < TestCase

  attr_accessor :log
  def set_up
    @log = 'set_up '
  end

  def test_method
    @log = "#{@log}test_method "
  end

  def tear_down
    @log = "#{@log}tear_down "
  end

  def test_broken_method
    raise Exception
  end
end
