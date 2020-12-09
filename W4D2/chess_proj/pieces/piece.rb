class Piece
    attr_reader :board, :pos, :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        @valid_moves = []

        board.add_piece(pos, self)
    end

    def to_s
        " #{symbol} "
    end

    def empty?
        false
    end

    def valid_moves
        
    end

    def pos=(val)
    end

    def symbol
    end

    private
    def move_into_check(end_pos)

    end
end