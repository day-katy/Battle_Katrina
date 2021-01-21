require 'player'

describe Player do

  subject(:katy) { Player.new('Katy') }

  it 'checks if the player has a name' do
    expect(katy.name).to eq "Katy"
  end
end