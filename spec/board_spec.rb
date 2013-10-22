require 'board'

describe Board do
let(:player) { double :player, name: 'Jeff' }
let(:shipplacer) { double :shipplacer}
let(:board) { Board.new player }

	context 'setting up the game' do

    it 'creates a board with a player' do
      expect(board.owner).to eq 'Jeff'
    end

		it 'creates 10 arrays' do
			expect(board.rows.count).to eq 10
		end

    it 'first array contains 10 elements' do
      expect(board.rows.first.count).to eq 10
    end

    it 'last array contains 10 elements' do
      expect(board.rows.last.count).to eq 10
    end

    it 'can choose random numbers for x and y between 0 and 9' do
      expect(board.x_randomiser).to be >= 0
      expect(board.x_randomiser).to be <= 9
      expect(board.y_randomiser).to be >= 0
      expect(board.y_randomiser).to be <= 9
    end

    it 'can create ships' do
      board.create_ships
      expect(board.ships.count).to eq 5
    end

    it 'can place ships' do
      board.create_ships
      board.place_ships
      expect(board.placed_ships).to be_a_kind_of Array
    end

    it "returns selected place as 's'" do
      board.stub({:y_randomiser => 5 })
      board.stub({:x_randomiser => 5 })
      expect(board.place_selector).to eq 's'
    end

    it "inserts an 's' permanently into selected place" do
      board.stub({:y_randomiser => 2 })
      board.stub({:x_randomiser => 5 })
      board.place_selector
      expect(board.rows[2][5]).to eq 's'
    end

    it "does not insert an 's' into a non-selected place" do
      board.stub({:y_randomiser => 1 })
      board.stub({:x_randomiser => 1 })
      board.place_selector
      expect(board.rows[1][0]).not_to eq 's'
    end

    it "board can receive miss" do
      board.register_shot 'B2'
      expect(board.rows[1][1]).to eq 'o'
    end

    it "changes ' ' to 'o' if user misses" do
      board.register_shot 'B2'
      expect(board.rows[1][1]).to eq 'o'
    end

    it "board receives a hit" do
      board.stub({:y_randomiser => 2 })
      board.stub({:x_randomiser => 1 })
      board.place_selector
      board.register_shot 'B3'
      expect(board.rows[2][1]).to eq 'x'
    end

    it "changes 's' to 'x' when a ship is hit" do
      board.stub({:y_randomiser => 5 })
      board.stub({:x_randomiser => 4 })
      board.place_selector
      expect(board.rows[5][4]).to eq 's'
      board.register_shot 'E6'
      expect(board.rows[5][4]).to eq 'x'
    end

    it "can recognise a double digit x co-ordinate" do
      board.register_shot 'A10'
      expect(board.rows[9][0]).to eq 'o'
    end

    it "turns all 's' values into ' ' values" do
      board.test_board
      expect(board.opponent_view.flatten.all?{ |n| n == ' ' }).to be_true
    end

    it "hits remain intact on the opponent's view" do
      board.stub({:y_randomiser => 3 })
      board.stub({:x_randomiser => 6 })
      board.place_selector
      board.register_shot 'G4'
      expect(board.opponent_view[3][6]).to eq 'x'
    end

    it "misses remain intact on the opponent's view" do
      board.register_shot 'G4'
      expect(board.opponent_view[3][6]).to eq 'o'
    end
  end
end