require_relative '../string_calculator'
require 'rspec'

RSpec.describe StringCalculator do
  describe "add(num_str)" do
    context "with empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end
  end
end
