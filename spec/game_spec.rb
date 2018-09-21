require 'game'

describe Game do

  let(:dave) { double :Player, name: "Dave", hp: 50}
  let(:mittens) { double :Player, name: "Mittens", hp: 50}
  let(:game) { described_class.new(dave, mittens) }

  describe "#attack" do
    it "damages the player" do
       expect(mittens).to receive(:receive_damage)
       game.attack(mittens)
     end
  end

  describe '#initialize' do
    it "takes player instances as arguments " do
      expect(game.player1).to eq dave
    end

    it "takes 2 player instances as arguments " do
      expect(game.player2).to eq mittens
    end
  end

  describe "#switch_turns" do
    it "changes who's turns it is" do
      game.switch_turns
      expect(game.current_turn).to eq mittens
    end
  end
end
