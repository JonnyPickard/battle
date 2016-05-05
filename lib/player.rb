class Player
  attr_reader :name
  attr_accessor :hitpoints

  def initialize(name, hitpoints=60)
    @name = name
    @hitpoints = hitpoints
  end

  def reduce_hitpoints
    @hitpoints -= rand(1..10)
  end

  def dead?
    @hitpoints <= 0
  end

end
