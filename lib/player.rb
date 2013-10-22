require 'board'

class Player

  def initialize name
  	@player = name
  	@board = Board.new name
    give_final_board
  end

  def give_final_board
    @board.final_board
  end

  def has_ships_still_floating?
    @board.board_layout.flatten.include?('s')
  end

  def shoot(at_coordinates, opponent_board)
    opponent_board.register_shot at_coordinates
  end

  def has_board?
    !@board.nil?
  end

end