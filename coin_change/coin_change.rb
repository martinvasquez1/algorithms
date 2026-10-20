def should_increase_counter(denominations, remaining, i)
  has_more_denominations = i < denominations.length
  smaller_than_remaining = has_more_denominations && remaining < denominations[i]
  has_more_denominations && smaller_than_remaining
end

def greedy(denominations, remaining)
  i = 0

  while should_increase_counter(denominations, remaining, i) do
    i += 1
  end

  no_denomination_fits = i == denominations.length
  if no_denomination_fits then
    return -1
  end

  i
end

def coin_change(denominations, amount)
  total = 0
  result = Array.new(denominations.length, 0)

  while (total < amount) do
    bigger = greedy(denominations, amount - total)

    no_denomination_fits = bigger == -1
    if no_denomination_fits
      return []
    end

    result[bigger] += 1
    total += denominations[bigger]
  end

  result
end
