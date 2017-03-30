require 'game'

describe Game do
  subject(:game) {described_class.new("Naz", "Will")}
  let(:player) {double(:player)}

  it 'initializes game with 2 players' do
    expect(game.healer).to eq "Naz"
    expect(game.receiver).to eq "Will"
  end

  it 'checks validate method calls increase_hp' do
    expect(player).to receive(:increase_hp)
    game.validate(player)
  end

  it 'switches healer to receiver and visa versa' do
    game.switch_players
    expect(game.healer).to eq "Will"
    expect(game.receiver).to eq "Naz"
  end
end
