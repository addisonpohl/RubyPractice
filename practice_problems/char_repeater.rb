#repeat each character of word with speceified amount of times

def word_repeat (number, word)
  number = number.to_i
  a_word = word.chars
  r_word = Array.new

  a_word.each do |i|
    repeated = i * number
    r_word.push(repeated)
  end
  new_word = r_word.join
  if new_word.length < 20
    puts new_word
  else
    false
  end
end

print "Provide a number: "
number = gets.chomp
print "Provide a word: "
word = gets.chomp
word_repeat(number, word)
