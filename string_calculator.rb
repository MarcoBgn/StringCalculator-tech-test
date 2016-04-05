class StringCalculator 
  
  def add(string)
    return parse_string(string) if parse_string(string)
    parsed_string = string.scan(/\d/).map { |number| number.to_i}
    parsed_string.reduce(:+)
  end
  
  private
  
  def parse_string(string)
    raise "negatives not allowed" if string.match(/-\d/)
    return 0 if string.empty?
  end
end