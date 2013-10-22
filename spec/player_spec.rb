require 'player'

describe Player do

  let(:player) { Player.new 'Jeff' }

  it 'tells us if the player has a board when initialized' do
    expect(player).to have_board
  end

  it 'receives a board populated with ships' do
    expect(player.board_layout.flatten).to include('s')
  end

  it 'tells us if the ship is still floating' do
    player.stub(:board_layout) { [[' ', ' ', 's']]}
    expect(player.has_ships_still_floating?).to be true
  end

  it 'tells us if the player has no ships still floating' do
    player.stub(:board_layout) { [[' ', ' ', ' ']] }
    expect(player.has_ships_still_floating?).to be false
  end

  # it "it says 'you sunk my battleship, bitch' if all ships are destroyed" do
  #   board = Board.new player
  #   player.stub(:board_array) { [[' ', ' ', 's']] }
  #   board.register_shot 'A3'
  #   expect(player.has_ships_still_floating?).to be false
  # end
end
