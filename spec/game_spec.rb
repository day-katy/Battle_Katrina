require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double("player_1") }
  let(:player_2) { double("player_2") }

  describe "#initialize" do
    it "should start with player 1 and player 2" do
      expect(game.players).to eq [player_1, player_2]
    end
  end

 describe '#player_1' do
   it 'retrieves the first player' do
     expect(game.player_1).to eq player_1
   end
 end

 describe '#player_2' do
   it 'retrieves the second player' do
     expect(game.player_2).to eq player_2
   end
 end

  describe '#attack' do
    it "should attack a player" do
      expect(player_2).to receive(:take_damage)
      game.attack(player_2)
    end

  end

end
