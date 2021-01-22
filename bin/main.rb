# !/usr/bin/env ruby
puts 'Enter a number from 1-9 to select the corresponding slot on the game board.'
def initialize_board
  @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  puts " #{@board[0] = 1} | #{@board[1] = 2} | #{@board[2] = 3} "
  puts ' ---------- '
  puts " #{@board[3] = 4} | #{@board[4] = 5} | #{@board[5] = 6} "
  puts ' ---------- '
  puts " #{@board[6] = 7} | #{@board[7] = 8} | #{@board[8] = 9} "
end

def next_turn(selected)
  available_slots = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  puts 'Invalid Input. Select a number between 1 and 9.' unless selected > 1 && selected < 10
  puts 'That slot is not available. Select an available slot.' unless available_slots.include? selected
  puts 'That is not a valid input. Select a number between 1 and 9.' unless selected.is_a? Integer
end

puts initialize_board

puts 'Welcome! You are Player X.'
puts 'Select the slot to place your first X.'
slot_selected = gets.chomp.to_i
next_turn(slot_selected)
puts initialize_board
# A "X" is placed on the board based on the number selected

puts 'Welcome! You are Player O.'
puts 'Select the slot to place your first O.'
slot_selected = gets.chomp.to_i
next_turn(slot_selected)
puts initialize_board
# An "O" is placed on the board based on the number selected

turn = 3
while turn <= 9
  if turn.odd?
    puts "It's your turn again Player X."
    puts 'Select the slot to place your next X.'
    slot_selected = gets.chomp.to_i
    # A "X" is placed on the board based on the number selected
    turn += 1
    next_turn(slot_selected)
    puts initialize_board
  elsif turn.even?
    puts "It's your turn again Player O."
    puts 'Select the slot to place your next O.'
    slot_selected = gets.chomp.to_i
    # An "O" is placed on the board based on the number selected
    turn += 1
    next_turn(slot_selected)
    puts initialize_board
  end
end

win = false

# If there are three "X"s are in line, then this line will be displayed
#puts 'Congratulations Player X! You are the winner!'

# If there are three "O"s are in line, then this line will be displayed
#puts 'Congratulations Player O! You are the winner!'

unless win
  puts "It's a draw. Better luck next time guys."
end