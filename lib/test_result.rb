#frozen_string_literal: true

class TestResult

  attr_reader :run_count, :error_count

  def initialize
    @run_count = 0
    @error_count = 0
  end

  def test_started
    @run_count += 1
  end

  def test_failed
    @error_count += 1
  end

  def summary
    "#{run_count} run, #{error_count} failed"
  end
end
