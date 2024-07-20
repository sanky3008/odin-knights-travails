# Knight's Travails

This project is part of The Odin Project curriculum. It implements a solution to find the shortest path for a knight to move from one square to another on a chessboard.

## Description

The Knight's Travails project uses a graph representation of a chessboard and implements a Breadth-First Search (BFS) algorithm to find the shortest path for a knight's movement between two squares.

## Files

- `Graph.rb`: Contains the `Graph` class which represents the chessboard and implements the `knight_moves` method.
- `main.rb`: The main script to run the program and test the `knight_moves` function.

## How it works

1. The chessboard is represented as a graph where each square is a vertex.
2. Valid knight moves are stored as connections between vertices.
3. The `knight_moves` method uses BFS to find the shortest path between two squares.

## Usage

Run the `main.rb` file to see example outputs:

```
ruby main.rb
```

## Implementation Details

- The graph is implemented using a hash map where keys are board positions and values are arrays of valid moves.
- BFS is used to ensure the shortest path is found.
- The algorithm keeps track of visited positions to avoid cycles.

## Learning Outcomes

This project demonstrates:
- Graph representation in Ruby
- Implementation of Breadth-First Search
- Problem-solving with graph traversal algorithms
- Efficient path-finding in a constrained space