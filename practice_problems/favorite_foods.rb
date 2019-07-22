
def food()
  puts "What are your 5 favorite foods?"

  user_foods = []
  5.times do |food|
    food = gets.chomp
    user_foods.push(food)
  end
  p user_foods

  user_foods.each { |food| puts "I love #{food}s!"}

  count = 0
  user_foods.each do |food|
    count += 1
    puts count.to_s + ". " + food
  end
end

food()
