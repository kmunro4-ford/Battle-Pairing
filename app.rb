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
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect "/play"
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player_1_points = 100
    @player_2_points = 100
    erb(:play)
  end

  # @damage_points = 10

  get '/attacked_player2_confirmation' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:confirm_attack_on_player2)
  end

end
