
module steppable

    def moves
        possible_moves = []
        valid_moves = []

        move_diffs.each do |diff| 
            dif_plus_pos = [] #[3,3]
            diff.each.with_index do |ele, i| 
                dif_plus_pos << self.pos[i] + diff[i]
            end
            possible_moves << dif_plus_pos
        end

        possible_moves.each do |step|
            if (step[0] >= 0 && step[0] <= 7) && (step[1] >= 0 && step[1] <= 7) #need to check if step is occupied by friendly 
                valid_moves << step
            end
        end

        valid_moves
    end

    def move_diffs
        raise 'you didnt make a move diffs in the piece subclass'
    end


end





# [x,y]
# knight
# [2,1]
# [1,2]
# [2,-1]
# [1,-2]
# [-2,1]
# [-1,2]
# [-1,-2]
# [-2,-1]
# king
# [1,1]
# [-1,-1]
# [1,0]
# [1,-1]
# [-1,0]
# [-1,1]
# [0,1]
# [0,-1]