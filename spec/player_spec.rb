require 'player'

describe Player do

  subject(:dave) { described_class.new("Dave") }
  subject(:mittens) { described_class.new("Mittens") }

describe "#name" do
  it "should give a player a name" do
    expect(dave.name).to eq "Dave"
  end
end

describe "#HP" do
  it "should give a player HP" do
    expect(dave.hp).to eq Player::DEFAULT_HIT_POINTS
  end
end

describe "#attack" do
  it "damages the player" do
     expect(mittens).to receive(:receive_damage)
     dave.attack(mittens)
   end
end

describe "#receive_damage" do
  it "reduces the hp's by 10" do
    expect{mittens.receive_damage}.to change{mittens.hp}.by -10
  end
end

end
