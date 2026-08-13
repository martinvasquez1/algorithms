def selection_sort(array)
    (0...array.length - 1).each do |i|
        current_number = array[i]
        smallest_index = i

        (i...array.length).each do |j|
            smallest_index = j if array[j] < array[smallest_index]
        end

        array[i] = array[smallest_index]
        array[smallest_index] = current_number
    end

    array
end

array1 = [4, 7, 2, 3, 9]
selection_sort(array1)
