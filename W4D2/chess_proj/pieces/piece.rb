class Piece
    attr_reader :board, :pos
    def initialize(board, pos)
        @board = board
        @pos = pos
    end
end