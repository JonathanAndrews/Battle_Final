require 'player'

describe Player do

  subject { described_class.new("Dave", 50) }
  # subject { described_class.new("Mittens") }

  it "should give a player a name" do
    expect(subject.name).to eq "Dave"
  end

  it "should give a player HP" do
    expect(subject.hp).to eq 50
  end

  it "reduces the hp's by 10" do
    expect{subject.attack}.to change{subject.hp}.by -10
  end

end
