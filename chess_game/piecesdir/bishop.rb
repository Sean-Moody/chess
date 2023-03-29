require_relative 'pieces.rb'
require_relative 'slideable.rb'

class Bishop < Piece
  include Slideable


  def symbol
    :B
  end

  protected

  # def move_dirs
  #   # return the directions in which a queen can move
  #   # a queen can move horizontally (across rows and columns) and diagonally
  # end
end
