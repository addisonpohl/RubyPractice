class Name

  #adds reading attributes
  #attr_reader :title, :first_name, :middle_name, :last_name

  #adds writing attributes
  #attr_writer :title, :first_name, :middle_name, :last_name

  #Adds Read / Write attributes
  attr_accessor :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end
  def full_name_w_title
    @title + " " + full_name()
  end

  def to_s
    full_name_w_title
  end
end

name = Name.new("Sir", "Addison", "C.", "Pohl")

puts name.full_name
puts name.full_name_w_title

#john = Name.new("Mr. ", "John", "F.", "Smith")

#puts john.full_name
#puts john.full_name_w_title
puts name
