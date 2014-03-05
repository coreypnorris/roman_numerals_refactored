def roman_numerals (input)
  empty_array = []
  roman_hash = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
    100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
  }


  roman_hash.each do |digit, letter|
    while input >= digit
      empty_array << letter
      input = input - digit
    end
    
  end
  empty_array = empty_array.join
  empty_array
end
print roman_numerals(3998)
