#array with various types
types = [2, "two", 2.0]

def sort(an_array)
#Sort objects from an array by type and place them in their own array
  num = 0
  str = ""
  flt = 0.0
  a_num = Array.new
  a_str = Array.new
  a_flt = Array.new

  an_array.each do |value|
    if value.class == num.class
      num += value
      a_num.push(num)
    elsif value.class == str.class
      str += value
      a_str.push(str)
    elsif value.class == flt.class
      flt += value
      a_flt.push(flt)
    end
  end
  print(a_num, a_str, a_flt)
end

sort(types)
