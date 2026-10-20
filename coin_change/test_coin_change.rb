require 'minitest/autorun'
require_relative 'coin_change'

class CoinChangeTest < Minitest::Test
  def test_return_minimum
    denominations = [5, 2, 1]
    amount = 8

    result = coin_change(denominations, amount)

    expected_result = [1, 1, 1]
    assert_equal result, expected_result
  end

  def test_return_zero
    denominations = [5, 2, 1]
    amount = 0

    result = coin_change(denominations, amount)

    expected_result = [0, 0, 0]
    assert_equal result, expected_result
  end

  def test_no_fit
    denominations = [5, 2]
    amount = 1

    result = coin_change(denominations, amount)

    expected_result = []
    assert_equal result, expected_result
  end

  def test_one_denomination
    denominations = [1]
    amount = 1

    result = coin_change(denominations, amount)

    expected_result = [1]
    assert_equal result, expected_result
  end

  def test_greedy_fails
    denominations = [4, 3, 1]
    amount = 6

    result = coin_change(denominations, amount)

    expected_result = [1, 0, 2]
    assert_equal result, expected_result
  end

  def test_unreachable_amount
    denominations = [3]
    amount = 4

    result = coin_change(denominations, amount)

    expected_result = []
    assert_equal result, expected_result
  end

  def test_no_denomination
    denominations = []
    amount = 1

    result = coin_change(denominations, amount)

    expected_result = []
    assert_equal result, expected_result
  end
end
