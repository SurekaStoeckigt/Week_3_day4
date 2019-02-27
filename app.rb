require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:name_one])
    player_2 = Player.new(params[:name_two])
    $game = Game.new(player_1, player_2)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    # @player_1 = $game.player1
    # @player_2 = $game.player2
    # @player_name_1 = @player_1.name
    # @player_name_2 = @player_2.name
    erb(:play)
  end

  get '/attacked' do
    # @player_1 = $game.player1
    # @player_2 = $game.player2
    # @player_name_1 = @player_1.name
    # @player_name_2 = @player_2.name
    @game = $game
    @game.attack(@game.player_2)
    # @game.switch_turn
    erb(:attacked)
  end

  post '/switch-turns' do
    $game.switch_turn
    redirect('/play')
  end

  # post '/names' do
  #   @player_name_one = params[:name_one]
  #   @player_name_two = params[:name_two]
  #   erb(:play)
  # end
run! if app_file == $0
end
