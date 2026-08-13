require "minitest/autorun"
require_relative "main"

class MergeTest < Minitest::Test
  def test_merges_two_sorted_ranges
    array = [1, 3, 5, 2, 4, 6]

    merge(array, 0, 2, array.length - 1)

    assert_equal [1, 2, 3, 4, 5, 6], array
  end

  def test_merges_odd_array
    array = [1, 3, 5, 2, 4]

    merge(array, 0, 2, array.length - 1)

    assert_equal [1, 2, 3, 4, 5], array
  end

  def test_merges_when_left_range_has_one_element
    array = [1, 2, 3, 4]

    merge(array, 0, 0, array.length - 1)

    assert_equal [1, 2, 3, 4], array
  end

  def test_merges_when_right_range_has_one_element
    array = [1, 3, 5, 2]

    merge(array, 0, 2, array.length - 1)

    assert_equal [1, 2, 3, 5], array
  end

  def test_handles_duplicates
    array = [1, 2, 2, 1, 3, 3]

    merge(array, 0, 2, array.length - 1)

    assert_equal [1, 1, 2, 2, 3, 3], array
  end

  def test_merge_inner_part
    array = [60, 1, 3, 5, 2, 4, 6, 30]

    merge(array, 1, 3, 6)

    assert_equal [60, 1, 2, 3, 4, 5, 6, 30], array
  end

  def test_already_sorted
    array = [1, 2, 3, 4, 5, 6]

    merge(array, 0, 2, array.length - 1)

    assert_equal [1, 2, 3, 4, 5, 6], array
  end
end