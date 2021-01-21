class Player

  attr_reader :name, :health

  DEFAULT_HEALTH = 100

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def attack(player_name)
    player_name.take_damage
  end

  def take_damage
    @health -= 10
  end

end
