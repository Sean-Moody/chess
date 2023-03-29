require_relative 'pieces.rb' 
require_relative 'steppable.rb'

class Knight < Piece

    def symbol
        :Kn
    end

    protected

    def move_diffs
        [[2,1], [1,2], [2,-1], [1,-2], [-2,1], [-1,2], [-1,-2], [-2,-1]]
    end
    
end