
def summed()
#Totals 10 integers provided by the user
  puts "Please enter 10 numbers:  "
  num_array = Array.new
  counter = 0
  while counter < 10
    user_numbers = gets.chomp.to_i
    num_array.push(user_numbers)
    counter += 1
  end
  puts "Your total is:#{num_array.sum}"
end


puts summed
