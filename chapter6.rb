# breadth-first search
# main example
graph = {
  'you' => %w[youseef ali],
  'youseef' => %w[mohamed ahmed],
  'ali' => ['ramy']
}

def mango_seller?(person)
  true if person[-1] == 'y'
end

def search(graph)
  queue = []
  queue += graph['you']
  searched = []
  until queue.empty?
    person = queue.shift
    unless searched.include?(person)
      if mango_seller?(person)
        puts "#{person} is a mango seller"
      else
        searched << person
        queue += graph[person] unless graph[person].nil?
      end
    end
  end
end

puts search(graph)

# other examples
# find if there a path between 1 and 3
graph = {
  1 => [2, 4],
  2 => [3],
  3 => [4]
}

def find(graph)
  queue = []
  queue += graph[1]
  until queue.empty?
    number = queue.shift
    if number == 3
      return 'There is a path between 1 and 3'
    else
      queue += graph[number] unless graph[number].nil?
    end
  end
  'There is no path between 1 and 3'
end

puts find(graph)

# Detect Cycle in a Directed Graph using BFS

graph = {
  0 => [1],
  1 => [2],
  2 => [3, 4],
  3 => [0],
  4 => [2]
}

def detect_cycle(graph)
  queue = []
  queue += graph[0]
  searched = []
  until queue.empty?
    num = queue.shift
    queue += graph[num] unless graph[num].nil?
    if searched.include?(num)
      p num
      p searched
      return 'There is a cycle in this graph.'
    else
      searched.append(num)
    end
  end
  'There is no cycle in this graph.'
end

puts detect_cycle(graph)

