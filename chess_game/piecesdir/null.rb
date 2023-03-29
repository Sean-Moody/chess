require 'singleton'
require_relative 'pieces.rb'

class NullPiece < Piece

    include Singleton

    def initialize
    end

    def moves
        new_arr = []
        (0..7).each do |i|
            (0..7).each do |j|
                new_arr << [i, j]
            end
        end
        new_arr
    end

    def symbol
        :N
    end


end
