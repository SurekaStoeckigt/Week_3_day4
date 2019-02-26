require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_name_one = Player.new(params[:name_one])
    $player_name_two = Player.new(params[:name_two])
    redirect('/play')
  end

  get '/play' do
    @player_name_one = $player_name_one.name
    @player_name_two = $player_name_two.name
    erb(:play)
  end

  get '/attacked' do
    @player_name_one = $player_name_one.name
    @player_name_two = $player_name_two.name
    @player_1 = $player_name_one
    @player_2 = $player_name_two
    # @player_name_1.attack(@player_name_2)
    Game.new.attack(@player_2)
    erb(:attacked)
  end


  # post '/names' do
  #   @player_name_one = params[:name_one]
  #   @player_name_two = params[:name_two]
  #   erb(:play)
  # end
run! if app_file == $0
end
