require 'player'
require 'board'

describe Player do
  it 'opponent board should receive register shot' do
		expect(opponent_board).to receive(:register_shot).with(:at_coordinates)
	end


	it 'tells us if the ship is still floating' do

	end

end