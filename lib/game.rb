class Game
  attr_reader :human_board, :computer_board

  def initialize(human_board: human_board, computer_board: computer_board)
    @human_board = human_board
    @computer_board = computer_board
    @players = [Player.new(board: @human_board), Player.new(board: @computer_board)]
  end

  def next_round
    players.each do |player|
      shots_fired = player.turn
      opponent(player).mark(shots_fired)
      player.print
      puts "*" * 50
    end
  end

  def winner?
    false
  end

  private

  def opponent(player)
    (players - [player]).first
  end

  attr_reader :players
end

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
