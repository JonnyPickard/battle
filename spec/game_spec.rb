require 'game'

describe Game do

  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) {double(:player_1)}
  let(:player_2) {double(:player_2)}

  describe '#player_1' do
    it 'returns player 1 after initialize' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player 2 after initialize' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'calls reduce_hitpoints on player' do
      expect(player_1).to receive(:reduce_hitpoints)
      game.attack(player_1)
    end
  end

  describe '#turn_switcher' do
    it 'switches turns after attack' do
      
    end
  end
end
