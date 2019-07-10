
list = [1, 2, 3, 4, 4, 5]

def find_duplicates(list)
#returns each number in a list that has duplicates
  duplicates = []
  list.each do |number|
    if list.count(number) > 1 && duplicates.count(number) < 1
      duplicates.push(number)
    end

    end

  return duplicates
end

p find_duplicates(list)
