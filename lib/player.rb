class Player
  def initalize name
  	@player = player
  	@board = board_creator
  end

  def has_ships_still_floating?

  end

  def shoot(at_coordinates, opponent_board)
    opponent_board.register_shot at_coordinates
  end

end