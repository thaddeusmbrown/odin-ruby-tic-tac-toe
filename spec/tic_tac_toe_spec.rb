require './lib/tic_tac_toe'

describe '#check_victory' do
  describe 'vertical victories' do
    it 'correctly identifies a left vertical victory' do
    end
    it 'correctly identifies a middle vertical victory' do
    end
    it 'correctly identifies a right vertical victory' do
    end
  end
  describe 'horizontal victories' do
    it 'correctly identifies a top horizontal victory' do
    end
    it 'correctly identifies a middle horizontal victory' do
    end
    it 'correctly identifies a bottom horizontal victory' do
    end
  end
  describe 'diagonal victories' do
    it 'correctly identifies a forward diagonal victory' do
    end
    it 'correctly identifies a backward diagonal victory' do
    end
  end
  it 'correctly identifies a tie' do
  end
  it 'increments the turn counter when no victory or tie is declared' do
  end
  it 'switches to the next player after each turn if no victory or tie is declared' do
  end
end

describe '#new_game' do
  it 'creates a new board with numbered positions' do
  end
  it "creates a turn counter that is an array of the strings 'x' and 'o'" do
  end
  it 'creates a turns variable that is set to zero' do
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