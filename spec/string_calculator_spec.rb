require_relative '../string_calculator'
require 'rspec'

RSpec.describe StringCalculator do
  describe "add(num_str)" do
    context "with empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "with single number" do
      it "returns the same number" do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context "with multiple numbers" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("1,2,3")).to eq(6)
      end
    end
  end
end
