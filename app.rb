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
    redirect '/player_1'
  end

  get '/player_1' do
    load_game(session[:game])
    erb :player_1, :layout => :'layout'
  end

  get '/attacking_2' do
    game = session[:game]
    game.attack(game.player_2)
    load_game(session[:game])
    erb :attacking_2, :layout => :'layout'
  end

  get '/player_2' do
    game = session[:game]
    load_game(session[:game])
    erb :player_2, :layout => :'layout'
  end

  get '/attacking_1' do
    game = session[:game]
    game.attack(game.player_1)
    load_game(session[:game])
    erb :attacking_1, :layout => :'layout'
  end

  def load_game(game)
    @player_1_name = game.player_1.name
    @player_2_name = game.player_2.name
    @player_1_hitpoints = game.player_1.hitpoints
    @player_2_hitpoints = game.player_2.hitpoints
  end

  run! if app_file == $0
end
