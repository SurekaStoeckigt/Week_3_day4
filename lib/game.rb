require_relative './player.rb'

class Game
    def attack(player)
      player.reduce_hitpoints
  end

end
