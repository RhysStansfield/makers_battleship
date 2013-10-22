module Utilities

  def test_board
    17.times { place_selector }
  end

  def check_for_s item
    return ' ' if item == 's'
    item
  end
  
end