require 'sinatra'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_name_one = params[:name_one]
    @player_name_two = params[:name_two]
  end

end
