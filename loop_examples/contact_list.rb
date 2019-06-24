def ask(question, kind ="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end

def add_contact
  contact = {"Name: " => "", "Phone Numbers" => []}
  contact["Name: "] = ask("What is the person's name?")
  answer = ""
  while answer != "n"
    answer = ask("Do you want to add a phone number? (y/n)")
    if answer == "y"
      phone = ask("Enter a phone number: ")
      contact["Phone Numbers"].push(phone)
    end
  end

  return contact
end

contact_list =[]

answer = ""
while answer != "n"
  contact_list.push(add_contact())
  answer = ask("Add another? (y/n)")
end
puts "----"
contact_list.each do |contact|
  puts "Name: #{contact['Name: ']}"
  if contact["Phone Numbers"].size > 0
    contact["Phone Numbers"].each { |phone_number| puts "Phone: #{phone_number}" }
  end
  puts "----"
end


  
