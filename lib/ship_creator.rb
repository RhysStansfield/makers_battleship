require 'ship'

class ShipCreator

  def initialize
    @ships = [Ship.new, Ship.new, Ship.new, Ship.new, Ship.new]
  end

  def ships
    @ships
  end

end