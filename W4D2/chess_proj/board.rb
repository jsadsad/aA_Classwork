require_relative 'pieces'

class Board
    attr_reader :grid
    def initialize
        starting_board
    end

    def[](pos)
        row,col = pos
        @grid[row][col]
    end

    def []=(pos, piece)
        row,col = pos
        @grid[row][col] = piece
    end

    def empty?(pos)
        self[pos].nil?
    end

    def add_piece(pos, piece)
        self[pos] = piece if empty?(pos)
    end

    def add_pieces(color)
        pieces = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]
        # iterate through pieces
        # at line 0 & 7
        # for each piece, we want to create an instance of that piece at that position.
        color == "white" ? i = 7 : i = 0
        pieces.each_with_index do |piece, j|
            piece.new(color, self, [i, j])
        end
    end

    def add_pawns(color)
        color == "white" ? i = 6 : i = 1
        (0..7).each do |j|
            Pawn.new(color, self, [i, j])
        end
    end

    def starting_board
        @grid = Array.new(8) {Array.new(8, nil)}
         ["white", "black"].each do |color|
             add_pieces(color)
             add_pawns(color)
         end

        # [0,1,6,7].each do |i|
        #     (0..7).each do |j|
        #         self[[i,j]] = Piece.new
        #     end
        # end
        # iterate through color
        # for color, we want to call add_pieces or add_pawns to fill in spots
        # 
    end

    def valid_move?(pos)
        #this piece has the ability to move like this
        #this is within bounds of the board
        if pos[0] >= 0 && pos[0] <= 7 && pos[1] >= 0 && pos[1] <= 7 
            return true
        end 
        false
        #if the space is not occupied by the same color
    end

    def move_piece(start_pos, end_pos)
        raise "there is no piece at start position" if self[start_pos].nil? # start position is empty
        raise "invalid move" if !valid_move?(end_pos) # if move is out bounds

        piece = self[start_pos] #piece is in this starting pos
        #move this value to endpos
        #replace piece at startposition with " "
        self[end_pos] = piece
        self[start_pos] = nil
        
        #piece.position = end_pos
    end

    def in_check?(color)
    end

    def find_king?(color)
    end

end

board = Board.new
board.starting_board
p board


#R K B q k B K R
#P P P P P P P P
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#P P P P P P P P
#R K B Q K B K R