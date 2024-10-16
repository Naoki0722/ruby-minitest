require 'minitest/autorun'
require './lib/sample'


module Test
  class SampleTest < Minitest::Test
    attr_reader :sample
    def setup
      @sample = ::Sample.new
    end
    def test_sample
      assert_equal sample.num_plus(1, 2), 3
      assert_equal sample.num_minus(5, 2), 3
    end
  end
end
