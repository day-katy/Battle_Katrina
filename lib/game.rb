require_relative 'player'

class Game

  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last 
  end

  def attack(player)
    player.take_damage
  end

  def switch_turn
    @current_turn == player_1 ? @current_turn = player_2 : @current_turn = player_1
  end
  
end