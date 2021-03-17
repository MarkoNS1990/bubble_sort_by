def bubble_sort(array)
  swapped = false
  until swapped
    swapped = true
    (0...array.length - 1).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = false
      end
    end
  end
  array
end

puts bubble_sort([5, 6, 2, 10, 9])

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
