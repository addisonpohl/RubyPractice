#Change in Case
#Given a single string and two postive intergers denoting indices. Change the case of the characters at those idices.


def change_case(word, int_1, int_2)
#Changes the case of the provided word by the speceified indices
  user_numbers = []
  user_numbers.push(int_1, int_2)
  user_numbers.each do |i|
    word[i] = word[i].swapcase
  end
  return word
end

#collect user's word and indices
puts "Please provide a word: "
user_word = gets.chomp
puts "Please provide postive integer"
num_1 = gets.chomp.to_i
puts "Please provide an additonal postive integer"
num_2 = gets.chomp.to_i

#call function and return speceified case swap.
p change_case(user_word, num_1, num_2)
