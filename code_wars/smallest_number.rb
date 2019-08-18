#Given an array of integers your solution should find the smallest integer.

num_set = [1, 15, 88, 2, -12]
num_set2 = [34, -345, -1, 100]

def find_smallet_int(arr)
#when given an array this function will return the smallest integer
  x = arr[0]
  arr.each do |int|
    if int < x
      x = int
    end
  end
  return x
end

puts find_smallet_int(num_set)
