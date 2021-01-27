# rubocop:disable Style/RedundantReturn
class Validation
  $available_slots = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def next_turn(selected, x_or_o)
    if selected < 1 || selected > 9
      $turn -= 1
      return 'Invalid Input. Select a number between 1 and 9.'
    elsif (!$available_slots.include? selected) || (selected < 1 || selected > 9)
      $turn -= 1
      return 'That slot is not available. Select an available slot.'
    else
      $available_slots.delete(selected)
      $board[selected - 1] = x_or_o
    end
  end
end

# rubocop:enable Style/RedundantReturn
