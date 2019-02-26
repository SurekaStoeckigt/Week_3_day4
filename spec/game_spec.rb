require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  it 'allows Player1 to attack Player2' do
    allow(player_2). to receive(:hit_points).and_return(60)
    a = player_2.hit_points
    expect(player_2).to receive(:reduce_hitpoints)
    game.attack(player_2)
  end

end
