class KnightPathFinder
  VALID_MOVES = []

  def initialize(pos)
    @root_node = PolyTreeNode.new(pos)
    @considered_positions = Array.new
    # build_move_tree
  end

  def build_move_tree
  end

  def self.valid_move

  end
end

# kpf = KnightPathFinder.new([0, 0])