class StringCalculator 
  
  def add(string)
    return 0 if string.empty? 
    parsed_string = string.scan(/\d/).map { |number| number.to_i}
    parsed_string.reduce(:+)
  end
end