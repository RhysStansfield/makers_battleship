require 'board'

describe Board do
let(:player) { double :player }
let(:board) { Board.new player }

	context 'setting up the game' do

		it 'creates 10 arrays' do
			expect(board.board_creator.count).to eq 10
		end

    it 'first array contains 10 elements' do
      expect(board.board_creator.first.count). to eq 10
    end

    it 'last array contains 10 elements' do
      expect(board.board_creator.last.count). to eq 10
    end

    it 'randomises a number' do
      expect(board.ship_randomiser).to be >= 0
      expect(board.ship_randomiser).to be <= 9
    end

    it "returns selected place as 's'" do
      board.stub(:ship_randomiser).and_return(5)
      expect(board.board_place_selector).to eq 's'
    end

  end
	
end