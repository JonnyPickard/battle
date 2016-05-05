require 'player'

describe Player do

  subject(:jonny) {described_class.new('jonny')}

  describe '#name' do
    it 'returns the name' do
      expect(jonny.name).to eq 'jonny'
    end
  end

  describe '#hitpoints' do
    it 'returns the hitpoints' do
      expect(jonny.hitpoints).to eq 60
    end
  end

  describe '#reduce_hitpoints' do
    it 'reduces the hitpoints by 10' do
      expect{jonny.reduce_hitpoints}.to change{jonny.hitpoints}.by(-10)
    end
  end

  describe '#dead?' do
    it 'correctly identifies when a play has 0 or less hitpoints' do
      jonny.hitpoints = 0
      expect(jonny.dead?).to be true
    end
  end
end
