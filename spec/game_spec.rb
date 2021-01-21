require 'game'

describe Game do

  let(:player_1) { double }
  let(:player_2) { double }

  describe "#initialize" do
    it "should start with player 1 and player 2" do
      expect(subject.players).to eq ["Katy", "Katrina"]
    end
  end

  # describe "#player_1" do
  
  # end

  describe '#attack' do
    it "should attack a player" do
      expect(player_2).to receive(:take_damage)
      subject.attack(player_2)
    end

  end

end
