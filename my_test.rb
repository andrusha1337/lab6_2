require 'test/unit'
require './main_class'

class MyTest < Test::Unit::TestCase
  def setup
    @integral_test = Integr.new
  end

  def test_1
    @integral_test.eps = 1e-3
    assert_in_delta(@integral_test.calc, 0.333, 1e-3)
  end

  def test_2
    @integral_test.eps = 1e-4
    assert_in_delta(@integral_test.calc, 0.3333, 1e-4)
  end
end
