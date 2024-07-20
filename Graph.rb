class Graph
  attr_accessor :net

  def initialize
    @net = Hash.new()
  end

  def populate_board()
    for i in 0..7
      for j in 0..7
        @net[[i,j]] = self.get_connections([i,j])
        # p "#{[i, j]} -> #{@net[[i, j]]}"
      end
    end
  end

  def knight_moves(source, destination, queue = Queue.new())
    # Will need to do BFS, as DFS will go on forever as the graph is cyclic

    already_explored = []

    return [source] if source == destination
    queue << [source, []]

    while !queue.empty?
      pointer, path = queue.pop

      p "Exploring #{pointer}, #{path}"

      @net[pointer].each do |connection|
        if connection == destination #Found
          path << connection
          puts "Found the destination!"
          return path
        else #If not found, add those connections to the queue
          if !already_explored.include?(connection)
            queue << [connection, path.clone << connection]
            already_explored << connection
          end
        end
      end
    end
  end

  # HELPER METHODS
  def get_connections(vertex) #vertex = [i,j]
    connections = []
    transformation_matrix = [
      [1, 2],
      [-1, 2],
      [1, -2],
      [-1, -2],
      [2, 1],
      [2, -1],
      [-2, 1],
      [-2, -1]
    ]
    transformation_matrix.each do |transformation|
      new_vertex = [vertex[0] + transformation[0], vertex[1] + transformation[1]]
      connections << new_vertex if inside_board?(new_vertex)
    end

    return connections
  end

  def inside_board?(vertex)
    return vertex[0] >= 0 && vertex[1] >= 0 && vertex[0] <= 7 && vertex[1] <= 7
  end
end
