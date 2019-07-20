
def vowel_count(word)
  vowels = ["a", "e", "i", "o", "u"]
  word = word.split("")
  counter = 0

  vowels.each do |char|
    if word.include?(char)
      counter += 1
    end
  end
  return "Your word has #{counter} vowels"
end

print "Please enter a word: "
u_word = gets.chomp
puts vowel_count(u_word)
