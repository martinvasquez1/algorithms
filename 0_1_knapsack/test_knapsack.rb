require 'minitest/autorun'
require_relative 'knapsack'

class Knapsack < Minitest::Test
  def test_all_items_fit
    w = 5
    items = [
      { weight: 2, value: 12, checked: false },
      { weight: 3, value: 20, checked: false }
    ]

    result = knapsack(w, items)

    expected_result = [true, true]
    assert_equal expected_result, result
  end

  def test_one_item_is_left
    w = 5
    items = [
      { weight: 2, value: 10, checked: false },
      { weight: 3, value: 12, checked: false },
      { weight: 4, value: 2, checked: false }
    ]

    result = knapsack(w, items)

    expected_result = [true, true, false]
    assert_equal expected_result, result
  end

  def test_capacity_zero
    w = 0
    items = [
      { weight: 2, value: 12, checked: false },
      { weight: 3, value: 20, checked: false }
    ]

    result = knapsack(w, items)

    expected_result = [false, false]
    assert_equal expected_result, result
  end

  def test_only_one_item_fits
    w = 1
    items = [
      { weight: 1, value: 10, checked: false },
    ]

    result = knapsack(w, items)

    expected_result = [true]
    assert_equal expected_result, result
  end

  def test_no_item_fits
    w = 1
    items = [
      { weight: 2, value: 10, checked: false },
      { weight: 3, value: 10, checked: false },
      { weight: 4, value: 10, checked: false },
    ]

    result = knapsack(w, items)

    expected_result = [false, false, false]
    assert_equal expected_result, result
  end

  def test_item_heavier_than_capacity
    w = 5
    items = [
      { weight: 100, value: 10, checked: false },
      { weight: 3, value: 10, checked: false },
      { weight: 2, value: 10, checked: false },
    ]

    result = knapsack(w, items)

    expected_result = [false, true, true]
    assert_equal expected_result, result
  end
end
