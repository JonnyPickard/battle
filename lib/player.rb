class Player
  attr_reader :name
  attr_accessor :hitpoints

  def initialize(name, hitpoints=60)
    @name = name
    @hitpoints = hitpoints
  end

  def reduce_hitpoints
    if @hitpoints > 10
      @hitpoints -= rand(1..10)
    else
      @hitpoints -= rand(1..@hitpoints)
    end
  end

  def dead?
    @hitpoints <= 0
  end

end
