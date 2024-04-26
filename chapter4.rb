# Quick Sort

# divide and conquer examples
# power
def pow(number, power)
  return number if power == 1

  number * pow(number, power - 1)
end

p pow(2, 12)

# square root
def square_root(number)
  return 0 if number <= 1

  divided_by2 = number / 2
  1 + square_root(divided_by2)
end

p square_root(4096)

# max and min in array
def max_min(array)
  max = array.first
  min = array.first
  array.each do |value|
    max = value if value > max
    min = value if value < min
  end
  "max: #{max}, min: #{min}"
end

puts max_min([1, 2, 3, 4, 5])


# quick sort main example
def quick_sort(array)
  return array if array.length < 2

  last_index = array.length - 1
  pivot = array[last_index]
  smaller, bigger = array[0..-2].partition { |value| value < pivot }
  quick_sort(smaller) + [pivot] + quick_sort(bigger)
end

p quick_sort([7, 6, 5, 4, 3, 2, 1])
