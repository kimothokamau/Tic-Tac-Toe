# !/usr/bin/env ruby

require_relative './../lib/validation'
require_relative './../lib/win_combinations'

$board = %w[1 2 3 4 5 6 7 8 9]

def initialize_board
  puts 'Enter an available number from 1-9 to select the corresponding slot on the game board.'
  puts " #{$board[0]} | #{$board[1]} | #{$board[2]} "
  puts ' ---------- '
  puts " #{$board[3]} | #{$board[4]} | #{$board[5]} "
  puts ' ---------- '
  puts " #{$board[6]} | #{$board[7]} | #{$board[8]} "
end

$turn = 1

$win = false

player_x = []
player_o = []
all_play = []

puts 'Welcome! You are Player X. Press any key to move on to the next player.'
gets.chomp

puts 'Welcome! You are Player O. Press any key to begin the game.'
gets.chomp

game_playing = true

while game_playing
  if $turn.odd?
    puts "It's your turn again Player X."
    puts 'Select the slot to place your X.'
    initialize_board
    slot_selected = gets.chomp.to_i
    player_x.push(slot_selected)
    all_play.push(slot_selected)
    $turn += 1
    val = Validation.new
    val.next_turn(slot_selected, 'X')
    win = WinCombinations.new
    win.win_combos(player_x, all_play, 'Player X')

  elsif $turn.even?
    puts "It's your turn again Player O."
    puts 'Select the slot to place your O.'
    initialize_board
    slot_selected = gets.chomp.to_i
    player_o.push(slot_selected)
    all_play.push(slot_selected)
    $turn += 1
    val = Validation.new
    val.next_turn(slot_selected, 'O')
    win = WinCombinations.new
    win.win_combos(player_o, all_play, 'Player O')
  end
  if $win == true
    game_playing = false
  elsif $turn > 9 && $win == false
    game_playing = false
  end
end
