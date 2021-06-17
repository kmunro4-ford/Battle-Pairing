class Player
  attr_reader :name
  attr_accessor :player_points
  DEFAULT_HITPOINTS = 100

  def initialize(name)
    @name = name
    @player_points = DEFAULT_HITPOINTS
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @player_points -= 10
  end

end
