<<<<<<< HEAD
require_relative './player.rb'
require_relative './game.rb'

class Attack
  # 
  # def self.run(player)
  #   attack(player)
  # end
  #
  # def attack(player)
  #   player.reduce_hitpoints
  # end

=======
class Attack
  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.damage(random_damage_amount)
  end

  private

  def random_damage_amount
    Kernel.rand(1..10)
  end
>>>>>>> 32ba25cd28cfedf7f4555e8bb732018163ceef62
end
