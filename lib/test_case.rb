#frozen_string_literal: true

class TestCase
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def set_up; end

  def run
    set_up
    send(@name)
  end
end
