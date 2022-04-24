require_relative "./Board.rb"

class Game
  def initialize
    @board = Board.new("./puzzles/sudoku1_almost.txt")
  end

  def play
    while !@board.solved?
      @board.render
      nums = prompt
      coords = nums[0...2]
      value = nums[2]
      @board[coords].set(value)
    end
    print "solved!"
  end

  def prompt
  puts "input two coords and a number value please thanks"
  input = gets.chomp
  formatted_input = input.split(" ")
  final_nums = formatted_input.map { |num| num.to_i}
  final_nums
  end
end

game = Game.new()
game.play