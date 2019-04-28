require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
<<<<<<< HEAD
  subject(:finished_game) {described_class.new(dead_player, player_2)}
  let(:player_1) {double :player, hit_points: 60 }
  let(:player_2) {double :player, hit_points: 60 }
  let(:dead_player) {double :player, hit_points: 0 }

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

  describe '#game_over?' do

    it 'returns false if no-one is dead yet' do
      expect(game.game_over?).to eq false
    end

    it 'returns true if at least one player is dead' do
      expect(finished_game.game_over?).to eq true
    end
  end

   describe '#loser' do
   it 'returns a player on less than 0HP' do
        expect(finished_game.loser).to eq dead_player
      end
   end
end
=======
  subject(:finished_game) { described_class.new(dead_player, player_2) }
   let(:player_1) { double :player, hit_points: 60 }
   let(:player_2) { double :player, hit_points: 60 }
   let(:dead_player) { double :player, hit_points: 0 }

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

     describe '#current_turn' do
       it 'starts as player 1' do
         expect(game.current_turn).to eq player_1
       end
     end

     describe '#switch_turns' do
       it 'switches the turn' do
         game.switch_turn
         expect(game.current_turn).to eq player_2
       end
     end

     describe '#opponent_of' do
       it 'finds the opponent of a player' do
         expect(game.opponent_of(player_1)).to eq player_2
         expect(game.opponent_of(player_2)).to eq player_1
       end
     end

     describe '#game_over?' do
       it 'returns false if no-one is at 0HP' do
         expect(game.game_over?).to be false
       end

       it 'returns true if at least one player is at 0HP' do
         expect(finished_game.game_over?).to be true
       end
     end

     describe '#loser' do
       it 'returns a player on less than 0HP' do
         expect(finished_game.loser).to eq dead_player
       end
     end
   end
>>>>>>> 32ba25cd28cfedf7f4555e8bb732018163ceef62
