class StringCalculator 
  
  def add(string)
    return guard_string(string) if guard_string(string)
    parsed_string = string.scan(/\d/).map { |number| number.to_i}
    parsed_string.reduce(:+)
  end
  
  private
  
  def guard_string(string)
    negative = string.match(/-\d/)
    raise "negatives not allowed: #{negative}" if negative
    return 0 if string.empty?
  end
end