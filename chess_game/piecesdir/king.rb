require_relative 'pieces.rb' 
require_relative 'steppable.rb'

class King < Piece

    def symbol
        :Ki
    end

    protected

    def move_diffs
        [[1,1], [-1,-1], [1,0], [1,-1], [-1,0], [-1,1], [0,1], [0,-1]]
    end

end