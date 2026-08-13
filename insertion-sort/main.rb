def insertion_sort(a)
    (1...a.length).each do |j|
        key = a[j]

        i = j - 1
        while i.positive? && a[i] > key
            a[i + 1] = a[i]
            i -= 1
        end

        a[i + 1] = key
    end
end

arr1 = [6, 9, 1]
insertion_sort(arr1)
p arr1
