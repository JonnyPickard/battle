class Player
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints=60)
    @name = name
    @hitpoints = hitpoints
  end

  def reduce_hitpoints
    @hitpoints -= 10
  end
end
