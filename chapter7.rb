# Dijkstra's Algorithm
graph = {
  'start' => { 'A' => 6, 'B' => 2 },
  'A' => { 'finish' => 1 },
  'B' => { 'A' => 3, 'finish' => 5 },
  'finish' => nil
}

costs = {
  'A' => 6,
  'B' => 2,
  'finish' => Float::INFINITY
}

parents = {
  'A' => 'start',
  'B' => 'start',
  'finish' => nil
}

processed = []

def find_lowest_cost_node(costs, processed)
  unprocessed_costs = costs.reject { |k, _v| processed.include?(k) }
  unprocessed_costs.min_by { |_k, v| v }[0] unless unprocessed_costs.empty?
end

def dijkstra_algorithm(graph, costs, parents, processed)
  node = find_lowest_cost_node(costs, processed)
  until node.nil?
    node_cost = costs[node]
    neighbors = graph[node] unless graph[node].nil?
    neighbors.each do |neighbour, neighbor_cost|
      new_cost = node_cost + neighbor_cost
      if new_cost < costs[neighbour]
        costs[neighbour] = new_cost
        parents[neighbour] = node
      end
    end
    processed << node
    node = find_lowest_cost_node(costs, processed)
  end
end

dijkstra_algorithm(graph, costs, parents, processed)
p costs
p parents

