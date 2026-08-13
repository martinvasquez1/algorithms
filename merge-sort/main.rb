# p <= q < r
def merge(array, p, q, r)
    n1 = q - p + 1
    n2 = r - q

    left = []
    right = []

    (0...n1).each do |i|
        left[i] = array[p + i]
    end

    (0...n2).each do |j|
        right[j] = array[q + j + 1]
    end

    # sentinel
    left[n1] = Float::INFINITY
    right[n2] = Float::INFINITY

    i = 0
    j = 0

    (p..r).each do |k|
        if left[i] <= right[j]
            array[k] = left[i]
            i += 1
        else
            array[k] = right[j]
            j += 1
        end
    end

    array
end
