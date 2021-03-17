def bubble_sort_by(arr)
  return arr if arr.size <= 1

  swapped = true

  while swapped
    swapped = false
    puts arr
    0.upto(arr.size - 2) do |i| # loop thru first el to second to last
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i] # swap places if first is bigger
        swapped = true
      end
    end
  end
  arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
