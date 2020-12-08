require_relative 'tic_tac_toe'
 
class TicTacToeNode
  attr_reader :board, :next_mover_mark
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos if prev_move_pos != nil
  end

  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    kids = Array.new
    (0..2).each do |row|
      (0..2).each do |col|
        space = @board[row][col]
        if space.empty?
          kids << TicTacToeNode.new(board.dup)
      end
    end
  end
end
