class Player
  def initialize(board: board)
    @board = board
  end

  def turn(available_shots)
    select_salvo(available_shots)
  end

  def mark(shots)
    @board.mark(shots)
  end

  def print
    @board.print
  end

  def available_shots
    @board.available_shots
  end

  private

  def select_salvo(available_shots)
    # TODO: number 6 should be ships remaining
    available_shots.shuffle.first(6)
  end
end
