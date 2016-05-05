require 'game'

describe Game do

  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }

  subject(:game) { described_class.new(player_1, player_2) }

  describe '#player_1' do
    it 'Returns player 1 after initialize' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'Returns player 2 after initialize' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'Calls reduce_hitpoints on player' do
      expect(player_1).to receive(:reduce_hitpoints)
      game.attack(player_1)
    end
  end

  describe "#winner" do
    it "Correctly identifies a player 1 has won" do
      allow(player_2).to receive(:dead?) { true }
      allow(player_1).to receive(:dead?) { false }
      expect(game.winner).to eq(player_1)
    end

    it "Correctly identifies a player 2 has won" do
      allow(player_1).to receive(:dead?) { true }
      allow(player_2).to receive(:dead?) { false }
      expect(game.winner).to eq(player_2)
    end
  end
end
