# rubocop:disable Style/GuardClause

class WinCombinations
  def win_combos(slot, player)
    possible_wins = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [4, 5, 6], [7, 8, 9]]
    if slot.length >= 3
      possible_wins.each do |arr|
        check_array = []
        arr.each do |space|
          check_array.push(space) if slot.include?(space)
          next unless possible_wins.include?(check_array)

          $win = true
          $winner = player
        end
      end
    end
  end
end

# rubocop:enable Style/GuardClause
