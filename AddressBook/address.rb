class Address
  attr_accessor :kind, :street_1, :street_2, :city, :state, :postal_code

  def to_s(format = "short")
    address = ''
    case format
    when 'long'
      address += street_1 + "\n"
      address += street_2 + "\n" if !street_2.nil?
      address += "#{city}, #{state}, #{postal_code}"
   when 'short'
     address += "#{kind}: "
     address += street_1
     if street_2
       address += " " + street_2
     end
     address += ", #{city}, #{state}, #{postal_code}"
    end
    address
  end
end

home = Address.new
home.kind = "Home"
home.street_1 = "7077 Waterway"
home.street_2 = "Apt. 321"
home.city = "Austin"
home.state = "Texas"
home.postal_code = "74231"

#puts home.to_s('short')
#puts "\n"
#puts home.to_s('long')
