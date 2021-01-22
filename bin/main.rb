# !/usr/bin/env ruby
puts  "Enter a number from 1-9 to select the corresponding slot on the game board."
def initialize_board
    @board =Array.new(3) {Array.new(3)}
    @board[0][0] =  1
    @board[0][1] =  2
    @board[0][2] =  3
    @board[1][0] =  4
    @board[1][1] =  5
    @board[1][2] =  6
    @board[2][0] =  7
    @board[2][1] =  8
    @board[2][2] =  9
    puts "__________"
    @board.each do |row|
        puts row.join(" | ")
        puts "__________"
    end
end

puts initialize_board

puts "Welcome! You are Player X."
puts "Select the slot to place your first X."
slot_selected =  gets.chomp
#A "X" is placed on the board based on the number selected

puts "Welcome! You are Player O."
puts "Select the slot to place your first O."
slot_selected =  gets.chomp
#An "O" is placed on the board based on the number selected

turn = 3
while turn <= 9
    if turn.odd?
        puts "It's your turn again Player X."
        puts "Select the slot to place your next X."
        slot_selected =  gets.chomp
        #A "X" is placed on the board based on the number selected
        unless slot_selected.is_a? Integer && slot_selected > 1 && slot_selected < 10
            puts "Invalid Input. Select a number between 1 and 9."
        unless available_slots.include? slot_selected
            puts "That slot is no. Select a number between 1 and 9."   
        turn += 1
    elsif turn.even?
        puts "It's your turn again Player O."
        puts "Select the slot to place your next O."
        slot_selected =  gets.chomp
        #An "O" is placed on the board based on the number selected
        turn += 1
    end
end

#If there are three "X"s are in line, then this line will be displayed
puts "Congratulations Player X! You are the winner!"

#If there are three "O"s are in line, then this line will be displayed
puts "Congratulations Player O! You are the winner!"

#If there are no three "X"s nor "O"s in line, then this line will be displayed
puts "It's a draw. Better luck next time guys."
