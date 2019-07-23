#A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

#Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

def panagram?(string)
  alphabet = ("a".."z").to_a
  str_array = string.downcase.chars.sort
  str_array.delete_if { |char| alphabet.include?(char) == false }
  str_array = str_array.uniq
  if str_array == alphabet
    return true
  else
    return false
  end
end

p panagram?("The quick brown fox jumps over the lazy dog...")
