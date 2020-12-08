class Board
    attr_reader :grid
    def initialize
        starting_board
    end

    # def add_piece(pos, piece)
    #     if pos.empty?
    #         self[pos] = piece
    #     end
    # end

    def add_pieces(color)
        pieces = ["R","Kn","B","Q","K","B","Kn","R"]
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
            piece.new(color, self, [i, j])
        end
    end

    def starting_board
        @grid = Array.new(8) {Array.new(8, " ")}
        ["white", "black"].each do |color|
            add_pieces(color)
            add_pawns(color)
        end
        # iterate through color
        # for color, we want to call add_pieces or add_pawns to fill in spots
        # 
    end

end

#R K B q k B K R
#P P P P P P P P
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#P P P P P P P P
#R K B Q K B K R