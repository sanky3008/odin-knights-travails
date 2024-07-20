require_relative "Graph"

### PSUEDO CODE
# 1. Populate the entire board's vertices in Graph in a Hashmap as keys -> populate_keys
# 2. Populate all connections of these vertices as value array of those keys -> populate_connections
# 3. Implement the main function -> knight_moves

board = Graph.new
board.populate_board()
p board.knight_moves([0,0], [3,3])
puts "\n\n ANOTHER PROBLEM \n\n"

p board.knight_moves([0,0], [4,5])
puts "\n\n ANOTHER PROBLEM \n\n"

p board.knight_moves([0,0], [7,7])
