#Extract all the numbers when given a string by the user

def extract(input)
#loops through each character and determines if it's a letter or number
  numbers = []
  input.each_char do |char|
    if char == "0"
#checks for the string 0 to ensure 0 is counted as a number
      zero = char.to_i
      numbers.push(zero)
    end
    if char.to_i != 0
#Anything other than 0 will be an integer.
      converted = char.to_i
      numbers.push(converted)
    end
  end
  return numbers
end


print "Please provide a word with numbers: "
user_input = gets.chomp
p extract(user_input)
