require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
      register Sinatra::Reloader
    end

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect "/play"
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb(:play)
  end

  # @damage_points = 10

  get '/attacked_player2_confirmation' do
    @player1 = $player1
    @player2 = $player2
    erb(:confirm_attack_on_player2)
  end

end
