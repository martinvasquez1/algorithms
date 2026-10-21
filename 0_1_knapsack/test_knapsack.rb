require 'minitest/autorun'
require_relative 'knapsack'

class Knapsack < Minitest::Test
  def test_fills_capacity
    w = 5
    items = [
      { weight: 2, value: 12, checked: false },
      { weight: 3, value: 20, checked: false }
    ]

    result = knapsack(w, items)

    expected_result = [true, true]
    assert_equal expected_result, result
  end
end
