require_relative 'player'

class Game

  def attack(player)
    player.take_damage
  end

end