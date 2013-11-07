require './battleship'

b1 = Board.new
b2 = Board.new
game = Game.new(human_board: b1, computer_board: b2)

until game.winner?
  puts "hello"
end