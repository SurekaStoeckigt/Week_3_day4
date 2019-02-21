require 'sinatra'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name_one] = params[:name_one]
    session[:player_name_two] = params[:name_two]
    redirect('/play')
  end

  get '/play' do
    @player_name_one = session[:player_name_one]
    @player_name_two = session[:player_name_two]
    erb(:play)
  end

  get '/attacked' do
    @player_name_one = session[:player_name_one]
    @player_name_two = session[:player_name_two]
    erb(:attacked)
  end

  # post '/names' do
  #   @player_name_one = params[:name_one]
  #   @player_name_two = params[:name_two]
  #   erb(:play)
  # end
run! if app_file == $0
end
