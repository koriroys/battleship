class Board
  def initialize(fleet: fleet)
    @board = Array.new(10) { Array.new(10, "__") }
    @fleet = fleet
    @available_rows = [*0..9]
  end

  def mark(x: x, y: y, value: "x")
    @board[x][y] = value
  end

  def turn
    randomize_shot
  end

  def seed
    @fleet.each do |ship|
      place(ship)
    end
  end

  def print
    @board.map{ |row| puts row.map{ |element| "%2s" % element }.join(" ") + "\n" }
  end

  private

  def randomize_shot
    row_size = @board.size
    column_size = @board.first.size
    [[*0...row_size].sample, [*0...column_size].sample]
  end

  def place(ship)
    puts "Setting #{ship.id} location."
    until set_random_location(ship)
      puts "Re-attempting to set #{ship.id} location."
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
