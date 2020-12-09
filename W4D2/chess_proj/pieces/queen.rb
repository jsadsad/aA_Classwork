require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
  include Slideable

  def symbol
  end

  def move_dirs
    hor_and_diag_direction
  end

end