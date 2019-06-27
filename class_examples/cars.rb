class Cars
  attr_reader :make, :model, :year
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def to_s
    "Make: #{make}, Model: #{model}, Year: #{year}"
  end


end

johns_car = Cars.new("Ford", "Mustang", 2000)
sams_car = Cars.new("Cadillac", "CTS", 2011)
puts johns_car
puts sams_car
