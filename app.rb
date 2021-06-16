require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
      register Sinatra::Reloader
    end

  get '/' do
    erb(:game_name)
  end

  post 'game' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:game_play)
  end

end
