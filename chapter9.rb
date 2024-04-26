# Dynamic Programming
# knapsack problem
def knapsack(capacity, wt, val, n)

  # Base case
  return 0 if n.zero? || capacity.zero?

  if wt[n - 1] > capacity
    knapsack(capacity, wt, val, n - 1)
  else
    [val[n - 1] + knapsack(capacity - wt[n - 1], wt, val, n - 1),
     knapsack(capacity, wt, val, n - 1)].max
  end
end

profit = [60, 100, 120]
weight = [10, 20, 30]
capacity = 50
n = profit.length
# p knapsack(capacity, weight, profit, n)

# Longest Substring

def longest_substring(a, b)
  common_substring = ''
  a.each_char do |char_a|
    b.each_char do |char_b|
      if char_a == char_b
        common_substring += char_a
        break
      end
    end
  end
  common_substring
end

# p longest_substring('Abdullah', 'AbdullahSaid')


## This solution go it online and tried to understand it
#                      ↓↓↓↓↓↓↓↓↓↓↓↓↓
def first_longest_common_substring(first_string, second_string)
  return '' if first_string == '' || second_string == ''

  m = Array.new(first_string.length) { [0] * second_string.length }
  longest_length = 0
  longest_end_pos = 0
  (0..first_string.length - 1).each do |x|
    (0..second_string.length - 1).each do |y|
      if first_string[x] == second_string[y]
        m[x][y] = 1
        if x.positive? && y.positive?
          m[x][y] += m[x - 1][y - 1]
        end
        if m[x][y] > longest_length
          longest_length = m[x][y]
          longest_end_pos = x
        end
      end
    end
  end
  first_string[longest_end_pos - longest_length + 1..longest_end_pos]
end

# p first_longest_common_substring('www.google.com', 'google')

p 2 / 2
