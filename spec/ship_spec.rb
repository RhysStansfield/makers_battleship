require 'ship'
require 'board'
require 'player'

describe Ship do

  it 'has a size' do
    ship = Ship.new
    # expect(ship.size).to 
  end

  it 'can choose an initial position' do
    ship = Ship.new
    player = Player.new 'Jeff'
    board = Board.new player
    ship.stub(:x_randomiser) { 1 }
    ship.stub(:y_randomiser) { 1 }
    ship.initial_position
    expect(board.board_layout[1][1]).to eq 's'
  end

  it "randomly chooses the direction to go in"

  it "checks if there is enough space"

  it "knows if there is a ship already in it's way"

  it "if there is not enough space it randomly chooses another direction"

  it "fills in determined space with 's'"


end