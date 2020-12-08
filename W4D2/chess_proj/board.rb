class Board
    def initialize
        grid = Array.new(8){Array.new(8, " ")}

    end

    def add_piece(pos, piece)
        if pos.empty?
            self[pos] = piece
        end
    end
end

#R K B K Q B K R
#P P P P P P P P
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#' ' ' ' ' ' ' '
#P P P P P P P P
#R K B K Q B K R