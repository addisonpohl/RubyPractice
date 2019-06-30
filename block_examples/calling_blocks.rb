def get_name(prompt)
  print prompt + " "
  name = gets.chomp
  print "Age: "
  age = gets.chomp
  yield name, age if block_given?
  name
end

my_name = get_name("Enter your name: ") do |your_name, age|
  puts "That's a cool name, #{your_name} Age #{age}!"
end

puts "my_name: #{my_name}"
