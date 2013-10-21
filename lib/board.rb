class Board
  def initialize player
    @player = player
    @board = board_creator
  end

  def owner
    @player.name
  end

  def register_shot at_coordinate

  end

  # def board_randomiser
  #   x = rand(10)
  #   y = rand(10)
  # end

  # a, b, c, d, e, f, g, h, i, j = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9

  def board_creator
    Array.new(10){Array.new(10){' '}}
  end

  def ship_randomiser
    rand(10)
  end

  def place_selector
    x = ship_randomiser
    y = ship_randomiser

    place_selected = @board[y][x]

    # @board = @board.each do |array| 
    #   if row_y == array
    #     array.each do |place|
    #       if array[x] == place
    #         place.sub!(' ','s') if place == place_selected
    #       end
    #     end
    #   end
    # end

    place_selected.sub!(' ','s')

    # puts @board
  end

  def cock
    board_creator.place_selector
  end

  def rows
    # Array.new(10, Array.new(10,' '))
  end

  def opponent_view
  end
end