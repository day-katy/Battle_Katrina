require 'sinatra'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/begin_play'
  end

  get '/begin_play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:begin_play)
  end

get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb(:attack)
  end
  
  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  

end
