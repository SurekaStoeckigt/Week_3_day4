class Player
  attr_reader :name, :hit_points
  DEFAULT_HITPOINTS = 60

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HITPOINTS
  end

  def attack(player)
    player.reduce_hitpoints
  end

  protected

  def reduce_hitpoints
    @hit_points-=10
  end

end