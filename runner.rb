require './battleship'

fleet = {
  carriers: [Ship.new(size: 5, id: :c)],
  battleships: [Ship.new(size: 4, id: :b)],
  cruisers: [Ship.new(size: 3, id: :cr)],
  destroyers: [Ship.new(size: 2, id: :d1), Ship.new(size: 2, id: :d2)],
  submarines: [Ship.new(size: 1, id: :s1), Ship.new(size: 1, id: :s2)]
}

b1 = Board.new(fleet: fleet.values.flatten)
b1.seed
b2 = Board.new(fleet: fleet.values.flatten)
b2.seed
game = Game.new(human_board: b1, computer_board: b2)

puts game.human_board.inspect

puts "-"*100

puts game.computer_board.inspect

# until game.winner?
#   puts "hello"
# end