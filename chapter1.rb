# Binary Search
# main example
def binary_search(array, number)
  min = 0
  max = array.length - 1
  while max >= min
    mid = (min + max) / 2
    guess = array[mid]
    if guess == number
      return guess
    elsif guess > number
      max = mid - 1
    else
      min = mid + 1
    end
  end
  false
end

# puts binary_search((1..100).to_a, 88)

# other examples
# find the missing number
def find_the_missing_number(array)
  missing_num = -1
  array.each_with_index do |num, i|
    unless i == array.length - 1
      missing_num = num + 1 if num + 1 != array[i + 1]
    end
  end
  missing_num
end

# puts find_the_missing_number([1, 2, 4, 5, 6, 7])


# find the element before which all the elements are smaller than it, and after which all are greater

def check(arr, i)
  y = i - 1
  t = i + 1

  until y.negative?
    return false if arr[y] > arr[i]

    y -= 1
  end
  until t < arr.length - 1
    return false if arr[t] < arr[i]

    t += 1
  end

  true
end

def find_element(array)
  last_index = array.length - 1
  (1..last_index - 1).each do |i|
    return i if check(array, i)
  end
  -1
end

p find_element([5, 1, 4, 3, 6, 8, 10, 7, 9])

