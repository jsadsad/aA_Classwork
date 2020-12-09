require_relative 'piece'

class Pawn < Piece
  def symbol
  end

  def moves
    forward_steps + side_attacks
  end

  private

  def forward_steps
    i, j = pos
    one_step = [i + forward_dir, j]
    two_step = [i + (2*forward_dir), j]
    return [] unless board.valid_move?(one_step)
    moves = [one_step]
    moves << two_step if at_start_row? # add empty?
    moves
    # incrementing i
    #if we can't move 1 step, we can't move 2
    # 1 step = [i + forward_dir,j] # [6,1] => [5,1]
    # 2 step = [i + 2*forward_dir,j] #[6,1] => [4,1]
    # if we can't move 1 step, moves should return []
    # else moves[1 step]
    # << 2 step if at_start_row? == true && pos.empty?
    # return moves
  end

  def side_attacks
    
  end

  def at_start_row?
    color == "white" ? pos[0] == 6 : pos[0] == 1
  end

  def forward_dir
    color == "white" ? -1 : 1 
  end

end