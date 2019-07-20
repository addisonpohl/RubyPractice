#Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

def createPhoneNumber(numbers)
  area = numbers[0, 3].join
  first_three = numbers[3..5].join
  last_four = numbers[6..10].join
  print "(#{area}) #{first_three}-#{last_four}"
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
createPhoneNumber(numbers)
