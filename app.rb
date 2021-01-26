require 'sinatra'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/begin_play'
  end

  get '/begin_play' do
    @game = $game
    erb(:begin_play)
  end

get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  post '/swtich-turn' do
    $game.switch_turn
    redirect '/play'
  end
  
  get '/play' do
    @game = $game
    erb(:play)
  end

run! if app_file == $0
end
