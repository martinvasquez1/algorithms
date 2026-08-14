require 'minitest/autorun'
require_relative 'merge_sort'

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

class MergeSortTest < Minitest::Test
    def test_sort_unsorted
        array = [8, 3, 5, 1, 12, 16]

        merge_sort(array, 0, array.length - 1)

        assert_equal [1, 3, 5, 8, 12, 16], array
    end

    def test_already_sorted
        array = [1, 2, 3, 4, 5, 6]

        merge_sort(array, 0, array.length - 1)

        assert_equal [1, 2, 3, 4, 5, 6], array
    end

    def test_duplicates
        array = [1, 2, 2, 1, 3, 3]

        merge_sort(array, 0, array.length - 1)

        assert_equal [1, 1, 2, 2, 3, 3], array
    end

    def test_negative_numbers
        array = [1, -4, -2, 5]

        merge_sort(array, 0, array.length - 1)

        assert_equal [-4, -2, 1, 5], array
    end

    def test_odd_length
        array = [9, 5, 7, 6, 8]

        merge_sort(array, 0, array.length - 1)

        assert_equal [5, 6, 7, 8, 9], array
    end

    def test_merge_inner_part
        array = [60, 1, 3, 5, 2, 4, 6, 30]

        merge_sort(array, 1, 6)

        assert_equal [60, 1, 2, 3, 4, 5, 6, 30], array
    end

    def test_single
        array = [1]

        merge_sort(array, 0, array.length - 1)

        assert_equal [1], array
    end

    def test_empty
        array = []

        merge_sort(array, 0, array.length - 1)

        assert_equal [], array
    end
end