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
    (0..7).each do |row|
      (0..7).each do |col|
        move = [row, col] #x, y
        valid_moves << move if valid_move?(move)
      end
    end
    valid_moves
  end

  def valid_move?(move) # [1,2]
    if move[0] == (@starting_pos[0] + 1 || @starting_pos[0] - 1) && move[1] == (@starting_pos[1] + 2 || @starting_pos[1] - 2)
      return true
    elsif move[0] == (@starting_pos[0] + 2 || @starting_pos[0] - 2) && move[1] == (@starting_pos[1] + 1 || @starting_pos[1] - 1)
      return true
    end
    false
  end
end

# kpf = KnightPathFinder.new([0, 0])