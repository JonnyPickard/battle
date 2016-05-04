require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hitpoints = $game.player_1.hitpoints
    @player_2_hitpoints = $game.player_2.hitpoints
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    $game.attack($game.player_2)
    @player_1_hitpoints = $game.player_1.hitpoints
    @player_2_hitpoints = $game.player_2.hitpoints
    erb(:attack)
  end

  get '/play2' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hitpoints = $game.player_1.hitpoints
    @player_2_hitpoints = $game.player_2.hitpoints
    erb(:play2)
  end

  run! if app_file == $0

end
