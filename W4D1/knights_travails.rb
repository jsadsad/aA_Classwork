class KnightPathFinder
  VALID_MOVES = []

  def initialize(pos)
    @root_node = PolyTreeNode.new(pos)
    @considered_positions = Array.new
    @starting_pos = pos
    # build_move_tree
  end

  def build_move_tree
  end

  def self.valid_moves
    #nested iteration 0-7 each
    #check if index1 == +/- 1 of current position index1 and index2 == +/- 2 of current index2, or vv
    #return array of valid moves
    valid_moves = []
    
    valid_moves
  end
end

# kpf = KnightPathFinder.new([0, 0])