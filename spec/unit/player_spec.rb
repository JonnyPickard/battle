require 'player'

describe Player do

  subject(:jonny) {described_class.new('Jonny')}

  describe '#name' do
    it 'Returns the name' do
      expect(jonny.name).to eq 'Jonny'
    end
  end

  describe '#hitpoints' do
    it 'Returns the hitpoints' do
      expect(jonny.hitpoints).to eq 60
    end
  end

  describe '#reduce_hitpoints' do
    it 'Reduces the hitpoints by 10' do
      expect{jonny.reduce_hitpoints}.to change{jonny.hitpoints}.by(-10)
    end
  end

  describe '#dead?' do
    it 'Correctly identifies when a play has 0 or less hitpoints' do
      jonny.hitpoints = 0
      expect(jonny.dead?).to be true
    end
  end
end
