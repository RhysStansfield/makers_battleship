require 'choose_randomly'
require 'shooting'
require 'utilities'

class Board

  include ChooseRandomly, Shooting, Utilities

  def initialize player
    @player = player
    @board = Array.new(10){Array.new(10){' '}}
  end

  def owner
    @player.name
  end

  def rows
    @board
  end

  def register_shot at_coordinate
    array = at_coordinate.scan(/./)
    x = calculate_x_shot array
    y = calculate_y_shot array
    calculate_shot x, y
  end

  def place_selector
    x = x_randomiser
    y = y_randomiser

    place_selected = @board[y][x]
    place_selected.sub!(' ','s')
  end

  def opponent_view
    rows.map do |array|
      array.map do |item|
        check_for_s item
      end
    end 
  end

end