require 'player'

# describe 'Player' do
#
# it 'returns its own name' do
#   player = Player.new("Jimmy")
#   expect(player.name).to eq "Jimmy"
# end

describe Player do
  subject(:dave) { Player.new('Dave') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

end
