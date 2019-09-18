
=begin
  The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

-It must start with a hashtag (#).
-All words must have their first letter capitalized.
-If the final result is longer than 140 chars it must return false.
-If the input or the result is an empty string it must return false.

rescue => exception
  
end
=end

usr_string = "this is a test"

def generateHashtag(str)
  if str == "" || str == " "
    return false
  else
    hashtag = str.delete(" ")
    hashtag = hashtag.capitalize
    hashtag = "#" + hashtag

    if hashtag.size > 140
      return false
    else 
      return hashtag
    end
  end
    
end

puts generateHashtag(usr_string)