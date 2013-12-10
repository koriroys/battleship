class Player
  def initialize(board: board)
    @board = board
  end

  def turn
    @board.turn
  end

  def mark(shots)
    @board.mark(shots)
  end

  def print
    @board.print
  end
end
