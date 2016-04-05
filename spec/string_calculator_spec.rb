describe StringCalculator do
  it "Returns 0 when passed an empty string" do
    expect(StringCalculator.add("")).to eq 0
  end
end