require 'sinatra/base'
require './helpers/attack_helper'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base
  enable :sessions
  helpers AttackHelper

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/begin_play'
  end

  get '/begin_play' do
    erb(:begin_play)
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    attack_and_redirect(@game)
  end

get '/attack' do
    erb(:attack)
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect '/play'
  end

  get '/game-over' do
    erb(:game_over)
  end

run! if app_file == $0
end
