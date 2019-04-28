require 'player'

describe 'Player' do

player_1 = Player.new("Jimmy")
player_2 = Player.new("Hoju")

it 'returns its own name' do
  player = Player.new("Jimmy")
  expect(player.name).to eq "Jimmy"
end

it 'returns player2s default points' do
  player = Player.new("Jimmy")
  expect(player.hit_points).to eq Player::DEFAULT_HITPOINTS
end

describe '#hit_points' do
    it 'returns the hit points' do
      player = Player.new("Jimmy")
      expect(player.hit_points).to eq Player::DEFAULT_HITPOINTS
    end
  end

  describe '#damage' do
    it 'reduces the player hit points' do
      player = Player.new("Jimmy")
      expect { player.damage(10) }.to change { player.hit_points }.by(-10)
    end
  end

# it 'reduces hit points' do
#   a = player_2.hit_points
#   player_1.attack(player_2)
#   b = player_2.hit_points
#   expect(a-b).to eq 10
# end

# describe Player do
#   subject(:dave) { Player.new('Dave') }
#
#   describe '#name' do
#     it 'returns the name' do
#       expect(dave.name).to eq 'Dave'
#     end
#   end

end
