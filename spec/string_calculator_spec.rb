describe StringCalculator do
  
  before do 
    @string_calculator = StringCalculator.new
  end
  
  context "#add" do
  
    it "Returns 0 when passed an empty string" do
      expect(@string_calculator.add("")).to eq 0
    end
    
    it "Returns a number when passed a single number " do
      expect(@string_calculator.add("1")).to eq 1
    end
    
    it "Returns the sum of two numbers passed in a string" do
      expect(@string_calculator.add("1,2")).to eq 3
    end
  end
end