require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
   erb :index
  end

  post '/player_names' do
    @player_1_name = params[:player_1]
    @player_2_name = params[:player_2]
    erb :play
  end

  run! if app_file == $0
end
