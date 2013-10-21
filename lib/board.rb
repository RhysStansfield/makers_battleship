class Board
  def initialize player
    @player = player
  end

  def owner
    @player.name
  end

  def register_shot at_coordinate
  end

  def rows
    puts
    Array.new(10, Array.new(10,' '))
  end

  def opponent view
  end
end