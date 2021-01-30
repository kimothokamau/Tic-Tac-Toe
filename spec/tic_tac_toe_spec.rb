require_relative '../lib/validation'
require_relative '../lib/win_combinations'

describe Validation do
  describe '#next_turn' do
    it 'compares the selection with a number less than 1' do
      validation = Validation.new
      expect(p(validation.next_turn(0, 'x'))).to eql('Invalid Input. Select a number between 1 and 9.')
    end

    it 'compares the selection with a number greater than  9' do
      validation = Validation.new
      expect(p(validation.next_turn(12, 'x'))).to eql('Invalid Input. Select a number between 1 and 9.')
    end

    it 'compares the selection with a negative number' do
      validation = Validation.new
      expect(p(validation.next_turn(-2, 'x'))).to eql('Invalid Input. Select a number between 1 and 9.')
    end
  end
end

describe WinCombinations do
  describe '#win_combos' do
    it 'compares if player x is the winner' do
      win_combinations = WinCombinations.new
      expect(p(win_combinations.win_combos([1, 2, 3], [1, 2, 3, 4, 5, 6, 7],
                                           'Player X'))).to eql('Congratulations Player X! You are the winner!')
    end

    it 'compares if player o is the winner' do
      win_combinations = WinCombinations.new
      expect(p(win_combinations.win_combos([3, 6, 9], [1, 2, 3, 4, 5, 6, 7, 8],
                                           'Player Y'))).to eql('Congratulations Player Y! You are the winner!')
    end

    it 'compares if nobody won and the game was drawn' do
      win_combinations = WinCombinations.new
      expect(p(win_combinations.win_combos([1, 2, 5], [1, 2, 3, 4, 5, 6, 7, 8, 9],
                                           'Player X'))).to eql("It's a draw. Better luck next time guys.")
    end
  end
end
