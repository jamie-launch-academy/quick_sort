def quicksort(array)
  return array if array.length <= 1

  mid = (array.length / 2).to_i
  mid_value = array[mid]
  array.delete_at(mid)

  smaller = []
  larger = []

  array.each do |x|
    if x <= mid_value
      smaller << x
    else
      larger << x
    end
  end

  return quicksort(smaller) + [mid_value] + quicksort(larger)
end

array = [2, 14, 63, 24, 3, 13, 41]

p quicksort(array)
