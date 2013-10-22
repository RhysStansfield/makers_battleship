class ShipPlacer

  attr_reader :ships

  def initialize ships, board
    @ships = ships
    @board = board.rows
  end

  def board
    @board
  end

end