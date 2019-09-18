#Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

string = "wallaby_way"

def to_camel_case(str)
  if str[0] == str[0].upcase 
    str.each_char do |char|
      if char == "_"
        puts char.index
      end
    end
  end

end

puts to_camel_case(string)