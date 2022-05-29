require './lib/tic_tac_toe'

describe '#check_victory' do
  before(:each) do
    @main = TicTacToe.new
    @main.stub(:take_turn)
    STDOUT.stub(:write)
    @main.new_game
  end
  describe 'vertical victories' do
    it 'correctly identifies a left vertical victory' do
      check_side = @main.turn_counter[0]
      check_array = ['X', 1, 2, 'X', 4, 5, 'X', 7, 8]
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
    it 'correctly identifies a middle vertical victory' do
      check_side = @main.turn_counter[0]
      check_array = [0, 'X', 2, 3, 'X', 5, 6, 'X', 8]
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
    it 'correctly identifies a right vertical victory' do
      check_side = @main.turn_counter[0]
      check_array = [0, 1, 'X', 3, 4, 'X', 6, 7, 'X']
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
  end
  describe 'horizontal victories' do
    it 'correctly identifies a top horizontal victory' do
      check_side = @main.turn_counter[0]
      check_array = ['X', 'X', 'X', 3, 4, 5, 6, 7, 8]
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
    it 'correctly identifies a middle horizontal victory' do
      check_side = @main.turn_counter[0]
      check_array = [0, 1, 2, 'X', 'X', 'X', 6, 7, 8]
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
    it 'correctly identifies a bottom horizontal victory' do
      check_side = @main.turn_counter[0]
      check_array = [0, 1, 2, 3, 4, 5, 'X', 'X', 'X']
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
  end
  describe 'diagonal victories' do
    it 'correctly identifies a forward diagonal victory' do
      check_side = @main.turn_counter[0]
      check_array = [0, 1, 'X', 3, 'X', 5, 'X', 7, 8]
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
    it 'correctly identifies a backward diagonal victory' do
      check_side = @main.turn_counter[0]
      check_array = ['X', 1, 2, 3, 'X', 5, 6, 7, 'X']
      @main.board_state = check_array
      expect do
        @main.send(:check_victory, check_side)
      end.to output("Victory! Player #{check_side} wins!\n").to_stdout
    end
  end
  it 'correctly identifies a tie' do
    @main.instance_variable_set(:@turns, 8)
    check_side = @main.turn_counter[0]
    expect do
      @main.send(:check_victory, check_side)
    end.to output("Tie game!\n").to_stdout
  end
  it 'increments the turn counter when no victory or tie is declared' do
  end
  it 'switches to the next player after each turn if no victory or tie is declared' do
  end
end

describe '#new_game' do
  before(:each) do
    @main = TicTacToe.new
    @main.stub(:take_turn)
    STDOUT.stub(:write)
    @main.new_game
  end
  it 'creates a new board with numbered positions' do
    check_array = (1..9).to_a
    expect(@main.board_state).to match_array(check_array)
  end
  it "creates a turn counter that is an array of the strings 'x' and 'o'" do
    check_array = %w[X O]
    expect(@main.turn_counter).to eql(check_array)
  end
  it 'creates a turns variable that is set to zero' do
    expect(@main.instance_variable_get(:@turns)).to eql(0)
  end
end

describe '#take_turn' do
  describe 'when the method asks user for input' do
    it 'accepts an integer representing a space that has not been used yet' do
    end
    it 'rejects an integer representing a space that has already been used' do
    end
    it 'rejects a non-integer value' do
    end
  end
  it 'changes the value in the board state to the correct player symbol' do
  end
  it 'breaks the loop when victory or tie is declared' do
  end
  it 'recursively calls itself when victory or tie is not declared' do
  end
end