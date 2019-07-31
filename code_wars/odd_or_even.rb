#You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

def num_search(n)
  even_count = []
  odd_count = []

  n.each do |num|
    if num.even?
      even_count.push(num)
    else
      odd_count.push(num)
    end
  end

  if even_count.count == 1
    return even_count[0]
  else
    return odd_count[0]
  end

end

test = [105, 107, 9, 3, 2]

print num_search(test)
