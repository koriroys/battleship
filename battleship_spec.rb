require 'rspec'
require './battleship'

describe Game do
  it "has pieces" do
    expect(subject.ships.size).to eq(5)
    expect(subject.ships[:carriers].size).to eq(1)
    expect(subject.ships[:battleships].size).to eq(1)
    expect(subject.ships[:cruisers].size).to eq(1)
    expect(subject.ships[:destroyers].size).to eq(2)
    expect(subject.ships[:submarines].size).to eq(2)
    # | 1x | Aircraft carrier | 5 |
    # | 1x | Battleship       | 4 |
    # | 1x | Cruiser          | 3 |
    # | 2x | Destroyer        | 2 |
    # | 2x | Submarine        | 1 |
  end

end

describe Board do
  lete(:subject) { described_class.new(ships: double('ships'))}
  it "can seed itself with data" do

  end
end