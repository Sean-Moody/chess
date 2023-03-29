require_relative 'pieces.rb'
require_relative 'slideable.rb'

class Rook < Piece
  include Slideable


  def symbol
    :R
  end

  protected

  # def move_dirs
  #   # return the directions in which a queen can move
  #   # a queen can move horizontally (across rows and columns) and diagonally
  # end
end
