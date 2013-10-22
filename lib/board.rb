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
    x_letter = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']

    array = at_coordinate.scan(/./) #takes a string past to it and chops it up into little bits everytime it hits a certain marker . means any character
    if array.length == 3
      y = 9
    else
      y = array[1].to_i - 1
    end
    x = x_letter.index(array[0])
    shot = ''
    if board_layout[y][x] == 's'
      shot = hit! y, x
    else
      shot = miss! y, x
    end
    shot.dup
  end

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
    board_layout.map do |array|
      array.map do |item|
        (item == 's')? ' ' : item
      end
    end 
  end

  def hit! y, x
    board_layout[y][x] = 'x'
  end

  def miss! y, x
    board_layout[y][x] = 'o'
  end

end