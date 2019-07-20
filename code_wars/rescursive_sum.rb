#Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

def digital_root(n)

#global variables were used to hold values over multiple functions so than can be looped. $num_array is used as a place holder for the provided number sliced into an array. $n is used to hold the $num_array sum as it's being itterated.
  $num_array = []
  $n = n
  def index(number)
  #converts integer into a string so the number can be itterated.
    number = number.to_s
  #itterates over each digit, coverts back to ineger, and push into a global array.
    number.each_char do |num|
      num = num.to_i
      $num_array.push(num)
    end
  end

  until $num_array.length == 1
  #loops until the output is a single digit
    index($n)
    $n = $num_array.sum
    p $num_array
    puts $n
    if $num_array.length != 1
      $num_array = []
    end
  end
  return $n
end

random = rand(1...10000)
puts "Starting Number: #{random}"
digital_root(random)
