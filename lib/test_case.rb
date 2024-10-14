#frozen_string_literal: true

class TestCase
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def run
    send(@name)
  end
end
