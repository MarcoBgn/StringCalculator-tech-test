describe StringCalculator do
  it "Returns 0 when passed an empty string" do
    string_calculator = StringCalculator.new
    expect(string_calculator.add("")).to eq 0
  end
end