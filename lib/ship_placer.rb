require_relative 'choose_randomly'

class ShipPlacer

  include ChooseRandomly

  attr_reader :ships, :board

  def initialize ships, board
    @ships = ships
    @board = board.rows
  end

  def place_ships ships
    ships.each do |ship|
      ship.choose_initial_position
    end
  end

end