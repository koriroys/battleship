class Ship
  attr_reader :id, :size

  def initialize(size: 0, id: id)
    @size = size
    @id = id
  end
end
