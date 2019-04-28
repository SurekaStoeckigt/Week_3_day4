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



  def switch_turn
    @current_turn = opponent_of(current_turn)
    # if @current_turn == player_1
    #   @current_turn = player_2
    # else
    #   @current_turn = player_1
    # end
    # p @curent_turn
  end

  # private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

  def game_over?
	    losing_players.any?
	  end

	  def loser
	    losing_players.first
    end

    def losing_players
	    players.select { |player| player.hit_points <= 0 }
	  end

	  def players_who_are_not(the_player)
	    players.select { |player| player != the_player }
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
