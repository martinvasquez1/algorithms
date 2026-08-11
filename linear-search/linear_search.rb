def linear_search(array, v)
    array.each_with_index do |item, index|
        if item == v
            return index
        end
    end

    return nil
end

arr1 = [10, 20, 30, 40, 50]
target = 40
result = linear_search(arr1, target)
p result