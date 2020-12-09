require 'singleton'
require_relative 'piece'

class NullPiece < Piece 
    attr_reader :symbol
    include Singleton

    def initialize
        @symbol = " "
    end

    def moves
        []
    end
end