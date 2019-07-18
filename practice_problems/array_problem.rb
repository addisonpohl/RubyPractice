#Find the sum of an array filled with integers and find the remainder when the sum is divided by the largest number in the array.

number_array = [1, 1, 1, 1]

total = number_array.sum
puts "total: #{total}"

large_num = number_array.max
puts "largest number: #{large_num}"

remainder = total % large_num
puts "solution: #{remainder}"
