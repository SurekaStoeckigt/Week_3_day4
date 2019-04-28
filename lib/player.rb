class Player
  attr_reader :name, :hit_points
  DEFAULT_HITPOINTS = 60

  def initialize(name, hit_points = DEFAULT_HITPOINTS)
    @name = name
    @hit_points = hit_points
  end



  # protected

  def damage(amount)
    @hit_points-=amount
  end

end
