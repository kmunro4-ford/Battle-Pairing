require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
      register Sinatra::Reloader
    end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect "/play"
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player_1_points = 100
    @player_2_points = 100
    erb(:play)
  end

end
