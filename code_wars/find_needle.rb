#Write a function findNeedle() that takes an array full of junk but containing one "needle"

def find_needle(haystack)
  needle = ""
  index = haystack.index("needle")
  haystack.each do |item|
    if item == "needle"
      needle = item
    end
  end
  if needle == "needle"
    return "found the needle at position #{index}"
  end
end

puts find_needle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,'needle',1,2,3,4,5,5,6,5,4,32,3,45,54])
