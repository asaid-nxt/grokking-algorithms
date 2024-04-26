# Greedy Algorithms
# The Knapsack Problem
def fill_knapsack(k_capacity, value, weight)
  knapsack = 0
  until weight.empty? || k_capacity < weight.min
    highest_value = 0
    item_weight = 0
    i = 0
    while i < value.length
      if value[i] > highest_value && weight[i] <= k_capacity
        highest_value = value[i]
        item_weight = weight[i]
      end
      i += 1
    end
    knapsack += value.delete(highest_value)
    k_capacity -= weight.delete(item_weight)
  end
  knapsack
end

# puts fill_knapsack(4, [1, 2, 3], [4, 5, 1])


# The Set Covering Problem
# find the best stations to cover the states needed
states_needed = Set.new(%w[mt wa or id nv ut ca az])

stations = {}
stations['kone'] = Set.new(%w[id nv ut])
stations['ktwo'] = Set.new(%w[wa id mt])
stations['kthree'] = Set.new(%w[or nv za])
stations['kfour'] = Set.new(%w[nv ut])
stations['kfive'] = Set.new(%w[ca az])


def find_best_stations(states_needed, stations)
  best_stations = Set.new
  until states_needed.empty?
    best_station = ''
    states_covered = Set.new
    stations.each do |station, states|
      covered = states_needed & states
      if covered.length > states_covered.length
        best_station = station
        states_covered = covered
      end
    end
    states_needed -= states_covered
    best_stations << best_station
  end
  best_stations
end

p find_best_stations(states_needed, stations)

