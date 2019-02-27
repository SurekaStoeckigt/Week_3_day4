require_relative './player.rb'

class Game
attr_reader :player_1, :player_2, :current_turn, :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end
  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_hitpoints
  end

  def switch_turn
    # @current_turn = opponent_of(current_turn)
    if @current_turn == player_1
      @current_turn = player_2
    else
      @current_turn = player_1
    end
    # p @curent_turn
  end

  # private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
  # def attack(player)
  #   player.reduce_hitpoints
  # end
  #
  # def player_1_turn
  #   @player_1
  # end
  #
  # def player_2_turn
  #   @player_2
  # end
  #
  # def reset_to_player_1_turn
  #   @player_2
  # end

end
