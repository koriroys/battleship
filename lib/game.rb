class Game
  attr_reader :human_board, :computer_board

  def initialize(human_board: human_board, computer_board: computer_board)
    @human_board = human_board
    @computer_board = computer_board
    @players = [@human_board, @computer_board]
  end

  def next_round
    players.each do |player|
      shots_fired = player.turn
      x, y = shots_fired
      opponent(player).mark(x: x, y: y)
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
