def random_number_of_string_numbers
  (0..rand(20)).map {|number| number.to_s}.join(",")
end

