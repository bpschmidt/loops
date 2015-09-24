require 'rspec'
require 'rspec/autorun'

# write a function that finds the largest number in this array.

def largest(array)
end

# write a function that smallest number

def smallest(array)
end

# write a function that adds all the numbers in the array together
# input: [1, 2, 3] output: 6

def added(array)
end

# write a function that multiplies the by each other
# i.e. input: [3, 4, 5] output: 6 (1 * 2 * 3)
# don't use ruby's inject.

def mutliplied(array)
end

RSpec.describe "Loop exercises" do
  describe "#largest" do
    context "with all positive" do
      let(:numbers) { [1, 3, 9, 11, 33, 10, 77] }
      it "returns the largest number" do
        expect(largest(numbers)).to eq(77)
      end
    end

    context "with all negative numbers" do
      let(:numbers) { [-1, -3, -9, -11, -33, -10, -77] }
      it "returns the largest number" do
        expect(largest(numbers)).to eq(-1)
      end
    end

    context "with negative and positive numbers" do
      let(:numbers) { [-1, -3, 9, 11, -33, 10, -77] }
      it "returns the largest number" do
        expect(largest(numbers)).to eq(10)
      end
    end
  end

  describe "smallest" do
    context "with all positive" do
      let(:numbers) { [1, 3, 9, 11, 33, 10, 77] }
      it "returns the smallest number" do
        expect(smallest(numbers)).to eq(1)
      end
    end

    context "with all negative numbers" do
      let(:numbers) { [-1, -3, -9, -11, -33, -10, -77] }
      it "returns the smallest number" do
        expect(smallest(numbers)).to eq(-77)
      end
    end

    context "with negative and positive numbers" do
      let(:numbers) { [-1, -3, 9, 11, -33, 10, 77] }
      it "returns the smallest number" do
        expect(smallest(numbers)).to eq(-33)
      end
    end
  end

  describe "#added" do
    let(:numbers) { [1, 3, 9, 11, 33, 10, 77] }
    it "returns the numbers added together" do
      expect(added(numbers)).to eq(144)
    end
  end

  describe "#multiplied" do
    let(:numbers) { [1, 2, 3, 4, 5, 6] }
    it "returns the numbers added together" do
      expect(multiplied(numbers)).to eq(120)
    end
  end
end
