# Recursion
# factorial
def recursive_factorial(num)
  return num if num == 1

  num * recursive_factorial(num - 1)
end

puts recursive_factorial(4)


# sum
def recursive_sum(array)
  return 0 if array.empty?

  num = array.pop
  num + recursive_sum(array)
end

puts recursive_sum([1, 2, 3, 4, 2])


# count
def recursive_count(array)
  return 0 if array.empty?

  array.pop
  1 + recursive_count(array)
end

puts recursive_count([1, 2, 3])


# max
def recursive_max(array)
  return array[0] if array.length == 1

  if array[0] > array.last
    array.pop
  else
    array.shift
  end
  recursive_max(array)
end

p recursive_max([1, 2, 3, 5, 4, 100, 90, 500])
