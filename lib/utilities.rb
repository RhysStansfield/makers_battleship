module Utilities

  def place_selector
    x = x_randomiser
    y = y_randomiser

    place_selected = @board[y][x]
    place_selected.sub!(' ','s')
  end

  def test_board
    17.times { place_selector }
  end

  def check_for_s item
    return ' ' if item == 's'
    item
  end

end