class Board
  def initialize player
    @player = player
    @board = board_creator
  end

  def owner
    @player.name
  end

  def board_layout
    @board
  end

  def register_shot at_coordinate
    y_letter = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']

    array = at_coordinate.scan(/./)
    x = array[1].to_i - 1
    y = y_letter.index(array[0])
    
    if board_layout[y][x] == 's'
      hit! y, x
    else
      miss! y, x
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
    board_layout
  end

  def opponent_view
  end

  def hit! y, x
    board_layout[y][x] = 'x'
  end

  def miss! y, x
    board_layout[y][x] = 'o'
  end
end