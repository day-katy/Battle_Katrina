require 'game'

describe Game do

  let(:player_1) { double }
  let(:player_2) { double }

  describe '#attack' do

    it "should attack a player" do
      expect(player_2).to receive(:take_damage)
      subject.attack(player_2)
    end

  end

end
