require_relative "pieces.rb"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) {Array.new(8) {[NullPiece.Instance]}}
        @rows[0] = Array.new(8) {Piece.new} 
        @rows[1] = Array.new(8) {Piece.new}
        @rows[6] = Array.new(8) {Piece.new}
        @rows[7] = Array.new(8) {Piece.new}
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos,val)
        row,col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos) #setting this to check if empty, fix this to check for nullpiece later
      if !self[start_pos].nil? 
        self[end_pos] << self[start_pos].pop
      end
    end

end

