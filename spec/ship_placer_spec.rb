require 'ship_placer'

describe ShipPlacer do
  let(:board) { double :board, rows: Array.new(10){Array.new(10){' '}}}
  let(:shipplacer) { ShipPlacer.new [ship], board }
  let(:ship) { double :ship }

  it 'can receive an array of ships' do
    expect(shipplacer.ships).to be_a_kind_of Array
  end

  it 'can receive a board' do
    expect(shipplacer.board).to be_a_kind_of Array
  end

  it 'receives an array of 10 items' do
    expect(shipplacer.board.count).to be 10
  end

  it "checks if there is enough space"

  it "knows if there is a ship already in it's way"

  it "if there is not enough space it randomly chooses another direction"

  it "fills in determined space with 's'"


end