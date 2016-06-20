# spec/string_calculator_spec.rb

# rspec --color --format=documentation

require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do
  let :the_calculator do
    StringCalculator.new
  end

  it "returns 0 for empty string" do
    # p the_calculator.add("") == 0
    expect( the_calculator.add("") ).to eq(0)
  end

  it "returns the number for a single number" do
    # p the_calculator.add("6") == 6
    # p the_calculator.add("9") == 9
  end

  it "returns the numbers added up for two numbers" do
    # p the_calculator.add("5,7") == 12
    # p the_calculator.add("4,3") == 7
  end
end
