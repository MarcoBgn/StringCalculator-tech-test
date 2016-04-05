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
    
    it "Returns the sum of an unknown number of numbers" do
      expect(@string_calculator.add("1,3,4,2,5,6")).to eq 21 
    end
    
    it "Can be passed a random number of numbers" do
      string = random_number_of_string_numbers
      expect((1..100)).to include @string_calculator.add(string)
    end
  end
end