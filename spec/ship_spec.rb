require 'ship'
require 'board'
require 'player'

describe Ship do

  let(:ship) { Ship.new }

  it 'has a size of 3 by default' do
    expect(ship.size).to be 3
  end

  it 'can be created with a size of 2' do
    ship = Ship.new 2
    expect(ship.size).to be 2
  end

  it 'can be created with a size of 4' do
    ship = Ship.new 4
    expect(ship.size).to be 4
  end

  it "can't be created with a size larger than 5" do
    ship = Ship.new 2000
    expect(ship.size).to be 5
  end

  it "can't be created with a float or decimal for it's size" do
    ship = Ship.new 5.3
    expect(ship.size).to be 5
  end

  it 'can choose a random x co-ordinate' do
    expect(ship.x_randomiser).to be >= 0
    expect(ship.x_randomiser).to be <= 9
  end

  it 'can choose a random y co-ordinate' do
    expect(ship.y_randomiser).to be >= 0
    expect(ship.y_randomiser).to be <= 9
  end

  it 'can choose an initial position' do
    ship.stub(:x_randomiser) { 3 }
    ship.stub(:y_randomiser) { 4 }
    expect(ship.choose_initial_position).to eq [3, 4]
  end

  it "can randomly choose to position itself pointing north" do
    ship.stub(:choose_randomly) { 1 }
    expect(ship.choose_initial_direction).to eq 0
  end

  it "can randomly choose to position itself pointing east" do
    ship.stub(:choose_randomly) { 4 }
    expect(ship.choose_initial_direction).to eq 1
  end

  it "checks if there is enough space"

  it "knows if there is a ship already in it's way"

  it "if there is not enough space it randomly chooses another direction"

  it "fills in determined space with 's'"


end