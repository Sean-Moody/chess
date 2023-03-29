module Slideable

    
    HORIZONTAL_DIRS = [
      [0, -1], # left
      [0, 1], # right
      [1, 0], # up (vertical)
      [-1, 0]  # down (vertical)
    ].freeze
  
    
    DIAGONAL_DIRS = [
      [:dx, :dy], # up + left
      [:dx, :dy], # up + right
      [:dx, :dy], # down + left
      [:dx, :dy]  # down + right
    ].freeze
  
  
    def horizontal_dirs
       HORIZONTAL_DIRS
    end
  
    def diagonal_dirs
      # getter for DIAGONAL_DIRS
    end
  
  
    # should return an array of places a Piece can move to
    def moves
      # create array to collect moves
  
      # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' `#move_dirs` method to get this info
        # for each direction, collect all possible moves in that direction
          # and add them to your moves array 
          # (use the `grow_unblocked_moves_in_dir` helper method)
  
      # return the final array of moves (containing all possible moves in all directions)
    end
  
  
    private
  
    def move_dirs
      raise NotImplementedError
    end
  

    def grow_unblocked_moves_in_dir(dx, dy)
      # create an array to collect moves
  
      # get the piece's current row and current column
  
      # in a loop:
        # continually increment the piece's current row and current column to generate a new position
        # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
        # if the new position is empty, the piece can move here, so add the new position to the moves array
        # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
          # but, the piece cannot continue to move past this piece, so stop looping
        # if the new position is occupied with a piece of the same color, stop looping
  
      # return the final moves array
    end
  end
  