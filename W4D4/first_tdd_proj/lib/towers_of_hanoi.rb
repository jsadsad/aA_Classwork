class TowersOfHanoi
  attr_reader :game_over

  def initialize
    @towers = [[1,2,3], [], []]
    @game_over = false
    @towers_win = [[], [], [1,2,3]]
    @turn = 1
    play
  end

  def play
    until won?
      move
    end
    p 'YOU WON!!!'
    p @towers
  end

  def won?    
    # game is won if board[0] == dupped_board[-1]
    # board - [1,2,3,4] == duped-board [1,2,3,4]
    @game_over = true
    @towers == @towers_win
  end

  def move
    p @towers
    if @turn != 1
      puts 'What number do you want to move?'
      pick_number = gets.chomp.to_i
      puts 'What tower do you want to put on?'
      pick_tower = gets.chomp.to_i
      firstnum = @towers[pick_number].shift
      @towers[pick_tower].unshift(firstnum)
    else
      puts 'Where do you want to put the first disc number?'
      pick_tower = gets.chomp.to_i
      firstnum = @towers[0].shift
      @towers[pick_tower].unshift(firstnum)
    end
    
    # user can only move the first value of an sub array
    # => [ [1,2,3,4], [], [] ] = board
    # => [ [2,3,4], [1], [] ] shift(1) and then unshifted to 2nd array
    # => [ [3,4], [1], [2] ]
    # => [ [4], [1], [3,2] ] 
    # shift removes first ele
    # unshift adds to front of array
    @turn += 1
  end
end

game = TowersOfHanoi.new