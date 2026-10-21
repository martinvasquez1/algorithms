def greedy(items)
  best = 0
  result_index = 0

  i = 0
  while i < items.length do
    current_item_ratio = items[i][:value] / items[i][:weight]

    if !items[i][:checked] && best < current_item_ratio then
      best = current_item_ratio
      result_index = i
    end

    i += 1
  end

  if best == 0 then
    return -1
  end

  result_index
end

def knapsack(w, items)
  result = Array.new(items.length, false)
  total = 0
  i = 0
  
  while i >= 0 && total < w do
    i = greedy(items)

    if i == -1 then
      break
    end

    if total + items[i][:weight] <= w then
      result[i] = true
      total += items[i][:weight]
    end

    items[i][:checked] = true
  end

  result
end
