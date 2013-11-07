class Ship
  def initialize(size: 0)
    @size = size
  end

  def size
    @size
  end
end

class Game
  def initialize(human_board: human_board, computer_board: computer_board)
    @human_board = human_board
    @computer_board = computer_board
  end

  def ships
    {
      carriers: [Ship.new(size: 5)],
      battleships: [Ship.new(size: 4)],
      cruisers: [Ship.new(size: 3)],
      destroyers: [Ship.new(size: 2), Ship.new(size: 2)],
      submarines: [Ship.new(size: 1), Ship.new(size: 1)],
    }
  end

  def winner?
    false
  end
end

class Board
  def initialize
    @board = Array.new(10, Array.new(10, ""))
  end
end