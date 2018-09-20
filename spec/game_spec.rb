require 'game'

describe Game do

  let(:mittens) { double :Player }
  let(:game) { described_class.new }

  describe "#attack" do
    it "damages the player" do
       expect(mittens).to receive(:receive_damage)
       game.attack(mittens)
     end
  end

end
