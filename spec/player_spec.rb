require 'player'

describe Player do

  subject(:katy) { Player.new('Katy') }
  subject(:katrina) { Player.new('Katrina') }

  it 'checks if the player has a name' do
    expect(katy.name).to eq "Katy"
  end

  describe "#health" do
    it "should display a player's health" do
      expect(katy.health).to eq Player::DEFAULT_HEALTH
    end
  end

  describe "#take_damage" do
    it "should reduce a player's HP by 10" do 
      katrina.take_damage
      expect(katrina.health).to eq Player::DEFAULT_HEALTH - 10
    end
  end
end