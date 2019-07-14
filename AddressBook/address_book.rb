require "./contact"

class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def print_contact_list
    puts "Contact List"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new
addison = Contact.new
addison.first_name = "addison"
addison.middle_name = "campbell"
addison.last_name = "pohl"
addison.add_phone_number("Home", "123-456-7899")
addison.add_phone_number("Work", "888-777-9999")
addison.add_address("Home", "32 Wallaby Way", "Suite 900", "Dallas", "Texas", "75321")

bob = Contact.new
bob.first_name = "bob"
bob.middle_name = "stevens"
bob.last_name = "pohl"
bob.add_phone_number("Home", "123-555-7777")
bob.add_address("Home", "32 Wallaby Way", "Suite 905", "Dallas", "Texas", "75321")

address_book.contacts.push(addison)
address_book.contacts.push(bob)
address_book.print_contact_list
