require_relative 'tic_tac_toe'
require "byebug"
 
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

  def mover_mark
    if @next_mover_mark == :x
      return :o
    else
      return :x
    end
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    # debugger
    kids = Array.new
    (0..2).each do |row|
      (0..2).each do |col|
        # space = @board.rows[row][col]
        pos = [row, col]
        if @board.rows[row][col].nil?
          kids << TicTacToeNode.new(@board.dup, mover_mark, pos)
        end
      end
    end
  end
end
