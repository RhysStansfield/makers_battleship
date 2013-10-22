require 'player'
# require 'board'

describe Player do

  it 'tells us if the player has a board when initialized' do
    player = Player.new 'Jeff'
    expect(player).to have_board
  end



  it 'tells us if the ship is still floating' do
    board = double :board, board_layout: [[' ', ' ', 's']]
    player = Player.new 'Jeff'
    expect(player.has_ships_still_floating?).to be true
  end

  it 'tells us if the player has no ships still floating' do
    board = double :board, board_layout: [[' ', ' ', ' ']]
    player = Player.new 'Jeff'
    expect(player.has_ships_still_floating?).to be false
  end

end

