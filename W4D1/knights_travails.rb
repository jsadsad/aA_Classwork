require_relative "polytreenode.rb"

class KnightPathFinder
  attr_reader :starting_pos, :considered_positions

  def initialize(pos)
    @root_node = PolyTreeNode.new(pos)
    @considered_positions = []
    @start_pos = pos
    build_move_tree
  end

  def build_move_tree
    queue = [@root_node]
    until queue.empty?
      dequeue = queue.shift
      new_nodes = new_move_positions(dequeue.value).map do |pos|
        PolyTreeNode.new(pos)
      end
      new_nodes.each {|node| dequeue.add_child(node)} 
      queue += new_nodes
    end
    nil
  end

  def new_move_positions(pos)
    new_moves = KnightPathFinder.valid_moves(pos)
    new_moves.select! { |new_pos| new_pos if !@considered_positions.include?(new_pos) }
    new_moves.each { |new_pos| @considered_positions << new_pos }
    new_moves
  end

  def self.valid_move?(move, pos)
    if (move[0] == pos[0] + 1 || move[0] == pos[0] - 1) && 
      (move[1] == pos[1] + 2 || move[1] == pos[1] - 2)
      return true
    elsif (move[0] == pos[0] + 2 || move[0] == pos[0] - 2) && 
      (move[1] == pos[1] + 1 || move[1] == pos[1] - 1)
      return true
    end
    false
  end

  def self.valid_moves(pos)
    valid_moves = []
    (0..7).each do |row|
      (0..7).each do |col|
        move = [row, col]
        valid_moves << move if valid_move?(move, pos)
      end
    end
    valid_moves
  end

  def find_path(end_pos)
    path = []
    node = trace_path_back(end_pos)
    until path.first == @root_node.value
      path.unshift(node.value)
      node = node.parent
    end
    path
  end

  def trace_path_back(end_pos)
    @root_node.bfs(end_pos)
  end

end

kpf = KnightPathFinder.new([0, 0])
p kpf.find_path([7, 6]) # => [[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]
p kpf.find_path([6, 2]) # => [[0, 0], [1, 2], [2, 0], [4, 1], [6, 2]]