#Simple, remove the spaces from the string, then return the resultant string.

def no_space(x)
  space = " "
  new_word = String.new
  x.each_char do |char|
    if char != space
      new_word += char
    end
  end
  return new_word
end
