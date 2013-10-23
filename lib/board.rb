require_relative 'choose_randomly'
require_relative 'shooting'
require_relative 'utilities'

class Board

  include ChooseRandomly, Shooting, Utilities

  attr_reader :ships, :placed_ships

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

  def place_ships
    create_ships
    place = ShipPlacer.new ships, self
    @placed_ships = place.ships
  end

  def create_ships
    create = ShipCreator.new
    @ships = create.ships
  end

  def opponent_view
    rows.map do |array|
      array.map do |item|
        check_for_s item
      end
    end 
  end

end