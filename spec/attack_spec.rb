require 'attack'

describe Attack do

  let(:mittens) { double :Player, name: "Mittens", hp: 50}
  let(:attack_class) { described_class }

  context "#run" do
    it "should damage the player" do
      expect(mittens).to receive(:receive_damage)
      attack_class.run(mittens)
    end
  end
end
