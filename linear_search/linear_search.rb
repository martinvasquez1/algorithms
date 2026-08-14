def linear_search(array, v)
    array.each_with_index do |item, index|
        return index if item == v
    end

    nil
end

arr1 = [10, 20, 30, 40, 50]
target = 40
result = linear_search(arr1, target)
p result
