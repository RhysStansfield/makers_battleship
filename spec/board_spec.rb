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
      expect(board.x_randomiser).to be >= 0
      expect(board.x_randomiser).to be <= 9
      expect(board.y_randomiser).to be >= 0
      expect(board.y_randomiser).to be <= 9
    end

    it "returns selected place as 's'" do
      board.stub(:y_randomiser).and_return(5)
      board.stub(:x_randomiser).and_return(5)
      expect(board.place_selector).to eq 's'
    end

    it "inserts an 's' permanently into selected place" do
      board.stub(:y_randomiser).and_return(2)
      board.stub(:x_randomiser).and_return(5)
      board.place_selector
      expect(board.board[2][5]).to eq 's'
    end

      it "does not insert an 's' permanently into selected place" do
      board.stub(:y_randomiser).and_return(1)
      board.stub(:x_randomiser).and_return(1)
      board.place_selector
      expect(board.board[1][0]).not_to eq 's'
    end

    it "board can receive miss" do
      board.stub(:x_randomiser).and_return(5)
      board.stub(:y_randomiser).and_return(4)
      board.place_selector
      board.register_shot 'B2'
      expect(board.board[1][1]).to receive(:miss!)
    end

    it "changes ' ' to 'o' if user misses" do
      board.register_shot 'B2'
      expect(board.board[1][1]).to eq 'o'
    end

    it "board receives a hit" do
      board.stub(:y_randomiser).and_return(1)
      board.stub(:x_randomiser).and_return(1)
      board.place_selector
      expect(board.board[4][5]).to receive(:hit!)
    end

    it "changes 's' to 'x' when a ship is hit" do
      board.stub!(:y_randomiser).and_return(5)
      board.stub!(:x_randomiser).and_return(4)
      board.place_selector
      expect(board.board[4][5]).to eq 's'
      board.register_shot 'F5'
      expect(board.board[4][5]).to eq 'x'
    end
  end
end