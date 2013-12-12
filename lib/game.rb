class Game
  def initialize(human_board: human_board, computer_board: computer_board)
    @human_board = human_board
    @computer_board = computer_board
    @players = [Player.new(board: @human_board), Player.new(board: @computer_board)]
  end

  def next_round
    players.each do |player|
      available_shots = opponent(player).available_shots
      shots_fired = player.turn(available_shots)
      opponent(player).mark(shots_fired)
    end
    players.each do |player|
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
