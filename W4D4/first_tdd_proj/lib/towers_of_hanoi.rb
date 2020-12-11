class TowersOfHanoi
  attr_reader :game_over

  def initialize
    @towers = [[1,2,3,4], [], []]
    @game_over = false
    @towers_win = [[], [], [1,2,3,4]]
    play
  end

  def play
    until won?
      move
    end
    game_over
  end

  def move
    # user can only move the first value of an sub array
    # => [ [1,2,3,4], [], [] ] = board
    # => [ [2,3,4], [1], [] ] shift(1) and then unshifted to 2nd array
    # => [ [3,4], [1], [2] ]
    # => [ [4], [1], [3,2] ] 
    # shift removes first ele
    # unshift adds to front of array
  end

  def won?
    @towers == @towers_win
    # game is won if board[0] == dupped_board[-1]
    # board - [1,2,3,4] == duped-board [1,2,3,4]
  end
end
