class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.reduce_hitpoints
  end

  def winner
    return @player_2 if @player_1.dead?
    return @player_1 if @player_2.dead?
  end
end
