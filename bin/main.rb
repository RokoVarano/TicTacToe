#!/usr/bin/env ruby

# Classes

class Board
  def print_board
    puts "[ #{Square.new('1')} ] [ #{Square.new('2')} ] [ #{Square.new('3')} ]"
    puts "[ #{Square.new('4')} ] [ #{Square.new('5')} ] [ #{Square.new('6')} ]"
    puts "[ #{Square.new('7')} ] [ #{Square.new('8')} ] [ #{Square.new('9')} ]"
  end
end

class Square
  def initialize(char = nil)
    @char = char
  end

  def to_s
    @char
  end
end

# Printing

# Welcome
puts ' --------------------------------------------------------------- '
puts ' ==============  Welcome to the TicTacToe !  =================== '
puts " Who's going to be the X ? (Please insert a nickname)"
gets.chomp
puts ' Player-X'
puts " Who's going to be the O ? (Please insert a nickname)"
gets.chomp
puts ' Player-O'
puts ' --------------------------------------------------------------- '


puts "Let's begin!"
# Start the game loop
board = Board.new

puts board.print_board

puts ' Player X <input nick> pick your move '
gets.chomp

puts board.print_board

puts ' Player O <input nick> pick your move '
gets.chomp

puts board.print_board

# Results!
puts ' ====================  The result is...  ======================== '
puts board.print_board

puts 'Congratulations! Player <input nick> is the Winner!'
puts 'Play again?'
gets.chomp
