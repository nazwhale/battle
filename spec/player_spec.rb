require 'player'

describe Player do
  subject(:player) {described_class.new("Naz")}
  
  it 'returns players name' do
    expect(player.name).to eq "Naz"
  end
  
  it "increases player 2's HP by 10" do
    player.increase_hp
    expect(player.hp).to eq 11
  end

  it 'expects player to have won when HP >= 100' do
    10.times {player.increase_hp}
    expect(player.won?).to be_truthy
  end
end
