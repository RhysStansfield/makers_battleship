class Board
  def initialize player
    @player = player
    @board = board_creator
  end

  def owner
    @player.name
  end

  def board
    @board
  end

  def register_shot at_coordinate
    

    # a, b, c, d, e, f, g, h, i, j = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
    # array, split, get index of array.
    # x = x_randomiser
    # y = y_randomiser
    # split the input into y and x 
    # change the number into to_i - 1


    place_selected = @board[y][x]
    if
    place_selected.sub!(' ','x')
    end
  end



  # def board_randomiser
  #   x = rand(10)
  #   y = rand(10)
  # end

  # a, b, c, d, e, f, g, h, i, j = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9

  def board_creator
    Array.new(10){Array.new(10){' '}}
  end

  def x_randomiser
    rand(10)
  end

  def y_randomiser
    rand(10)
  end

  def place_selector
    x = x_randomiser
    y = y_randomiser

    place_selected = @board[y][x]
    place_selected.sub!(' ','s')
  end

  def final_board
    17.times { place_selector }
  end

  def rows
    
  end

  def opponent_view
  end

  def miss! x, y
    @board[x][y] = 'o'
  end
end