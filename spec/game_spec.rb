require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq player_2
    end
  end

  it 'allows Player1 to attack Player2' do
    game = Game.new(player_1, player_2)
    expect(player_2).to receive(:reduce_hitpoints)
    game.attack(player_2)
  end

  it 'accepts two player instances' do
    game = Game.new(player_1, player_2)
    expect(game.players).to eq [player_1, player_2]
  end

  it 'starts with player1s turn' do
    expect(game.current_turn).to eq player_1
  end

  it 'switches to player2' do
    game = Game.new(player_1, player_2)
    game.switch_turn
    expect(game.current_turn).to eq player_2
  end

  it 'finds the opponent of the player' do
    expect(game.opponent_of(player_1)).to eq player_2
    expect(game.opponent_of(player_2)).to eq player_1
  end

end
