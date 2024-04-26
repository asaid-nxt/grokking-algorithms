# Selection Sort
#  sorting from the smallest
def find_smallest(array)
  smallest = array[0]
  smallest_index = 0
  array.each_with_index do |value, index|
    if value < smallest
      smallest = value
      smallest_index = index
    end
  end
  smallest_index
end

def sorting_from_smallest(array)
  new_arr = []
  array.length.times do
    smallest = find_smallest(array)
    new_arr.append(array.delete_at(smallest))
  end
  new_arr
end

p sorting_from_smallest([3, 7, 2, 6, 5, 1, 4, 8])

# sorting from the biggest to smallest
def find_biggest(array)
  biggest_num = array[0]
  biggest_num_index = 0
  array.each_with_index do |value, index|
    if value > biggest_num
      biggest_num = value
      biggest_num_index = index
    end
  end
  biggest_num_index
end

def from_biggest_to_smallest(array)
  result = []
  array.length.times do
    biggest = find_biggest(array)
    result.append(array.delete_at(biggest))
  end
  result
end

p from_biggest_to_smallest([3, 7, 2, 6, 5, 1, 4, 8])
