class Game
  attr_reader :human_board, :computer_board

  def initialize(human_board: human_board, computer_board: computer_board)
    @human_board = human_board
    @computer_board = computer_board
  end

  def human_turn
    puts "human is taking a turn"
    puts "Fire Ze Missiles, Hoooman"
    x, y = gets.chomp.split.map(&:to_i)
    puts "you are firing on coordinates x: #{x}, y: #{y}"
    computer_board.mark(x: x, y: y)
    computer_board.print
  end

  def winner?
    false
  end
end
