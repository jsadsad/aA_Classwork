require_relative "polytreenode.rb"

class KnightPathFinder
  VALID_MOVES = []
  attr_reader :starting_pos, :considered_positions

  def initialize(pos)
    # @root_node = PolyTreeNode.new(pos)
    @considered_positions = []
    @starting_pos = pos
    build_move_tree
  end

  def build_move_tree
    @root_node = PolyTreeNode.new(pos)
    queue = [@root_node]
    until queue.empty?
      dequeue = queue.shift
      # return dequeue if dequeue.value == target
      queue += 
    end
    nil
    new_move_positions()
  end

  def new_move_positions(pos)
    knight = KnightPathFinder.valid_moves(pos)
    knight.select { |new_pos| new_pos if !@considered_positions.include?(new_pos) }
    knight.each { |new_pos| @considered_positions << new_pos }
  end

  def self.valid_move?(move, pos) # move = [0, 4], pos = [1,2]
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
    #nested iteration 0-7 each
    #check if index1 == +/- 1 of current position index1 and index2 == +/- 2 of current index2, or vv
    #return array of valid moves
    valid_moves = []
    (0..7).each do |row|
      (0..7).each do |col|
        move = [row, col] #x, y
        valid_moves << move if valid_move?(move, pos)
      end
    end
    valid_moves
  end

end

# kpf = KnightPathFinder.new([1, 2])
# p kpf.new_move_positions(kpf.starting_pos)
# p kpf.considered_positions