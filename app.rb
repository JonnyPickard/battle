require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

Tilt.register Tilt::ERBTemplate, 'html.erb' # configure sinatra through tilt to use html.erb files

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :'new_warriors', :layout => :'home'
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    session[:game] = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    game = session[:game]
    @player_1_name = game.player_1.name
    @player_2_name = game.player_2.name
    @player_1_hitpoints = game.player_1.hitpoints
    @player_2_hitpoints = game.player_2.hitpoints
    erb :play, :layout => :'layout'
  end

  get '/attack' do
    game = session[:game]
    @player_1_name = game.player_1.name
    @player_2_name = game.player_2.name
    game.attack(game.player_2)
    @player_1_hitpoints = game.player_1.hitpoints
    @player_2_hitpoints = game.player_2.hitpoints
    erb :attack, :layout => :'layout'
  end

  get '/play2' do
    game = session[:game]
    @player_1_name = game.player_1.name
    @player_2_name = game.player_2.name
    @player_1_hitpoints = game.player_1.hitpoints
    @player_2_hitpoints = game.player_2.hitpoints
    erb :play2, :layout => :'layout'
  end

  run! if app_file == $0

end
