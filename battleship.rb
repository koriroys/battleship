class Ship
  attr_reader :id, :size

  def initialize(size: 0, id: id)
    @size = size
    @id = id
  end
end

class Game
  attr_reader :human_board, :computer_board
  def initialize(human_board: human_board, computer_board: computer_board)
    @human_board = human_board
    @computer_board = computer_board
  end

  def winner?
    false
  end
end

class Board
  def initialize(fleet: fleet)
    @board = Array.new(10) { Array.new(10, "") }
    @fleet = fleet
    @available_rows = [*0..9]
  end

  def seed
    @fleet.each do |ship|
      place(ship)
    end
  end

  private

  def place(ship)
    until set_random_location(ship)
      puts "Setting #{ship.id} location."
    end
  end

  def set_random_location(ship)
    # direction = :horiz
    location = [*0..9].sample
    row = @available_rows.sample
    if valid_location?(ship, location)
      set_location(ship, location, row)
      invalidate_row(row)
    end
  end

  def invalidate_row(row)
    @available_rows.delete(row)
  end

  def set_location(ship, location, row)
    (0..ship.size - 1).each do |position|
      @board[row][location + position] = ship.id
    end
  end

  def valid_location?(ship, location)
    !ship_too_close_to_west_side?(ship, location) && !ship_too_close_to_east_side?(ship, location)
  end

  def ship_too_close_to_east_side?(ship, location)
    false
  end

  def ship_too_close_to_west_side?(ship, location)
    (location + ship.size) >= 10
  end
end