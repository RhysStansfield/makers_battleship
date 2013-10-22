require 'ship_creator'

describe ShipCreator do

  let(:ship) { double :ship }
  let(:shipcreator) { ShipCreator.new  }

  it 'creates an array when initialized' do
    expect(shipcreator.ships).to be_a_kind_of Array
  end

  it 'populates the array with ships' do
    shipcreator.instance_variable_set(:@ships, [ship])
    expect(shipcreator.ships).to include ship
  end

  it 'populates the array with 5 ships' do
    expect(shipcreator.ships.count).to eq 5
  end

end