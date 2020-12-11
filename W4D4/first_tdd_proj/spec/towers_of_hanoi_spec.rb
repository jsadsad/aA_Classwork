require 'towers_of_hanoi'

describe TowersOfHanoi do

  describe "initialize" do
    let(:towers) {[[1,2,3,4], [], []]}
    it "should initialize a tower instance" do
      expect(towers).to eq([[1,2,3,4], [], []])
    end

  end

  describe "#move" do
    let(:matrix) { [[1,2,3,4,5], [], []] }

    it "can't move the last value of the first subarray" do
      expect(matrix.move).to not_eq([[1,2,3,4], [5], []])
    end

    it "can't move anything but the first value" do
      expect(matrix.move).to eq([[2,3,4,5], [], [1]])
    end

    # it "array length must not change more than 1 each turn" do
    #   expect(matrix.move).to eq([[2,3,4,5], [], [1]])
    # end

    #how to improve?
    #1....could have added a "Raise an error" rspec it do ex: "not to raise_error"
    #2
    end
  end

end