require 'game'

describe Game do
  subject(:game) {described_class.new("Naz", "Will")}
  let(:player) {double(:player)}

  it 'initializes game with 2 players' do
    expect(game.player_1).to eq "Naz"
    expect(game.player_2).to eq "Will"
  end

  it 'checks validate method calls increase_hp' do
    expect(player).to receive(:increase_hp)
    game.validate(player)
  end
end
