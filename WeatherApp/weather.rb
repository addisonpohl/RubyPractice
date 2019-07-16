require "http"

#pull weather data from a specefied location
#verify weather is displaying correctly
#display data in the console

def get_weather(city)
  #collects the weather conditions from the specefied location
  response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{city},us&units=imperial&APPID=INSERT")
  weather_data = response.parse
  return weather_data
end


#collect user's city
puts "What city are you in?"
city = gets.chomp

#Call method with given location
get_weather(city)

#print weather conditions and tempature
conditions = get_weather(city)["weather"][0]["description"]
temp = get_weather(city)["main"]["temp"]
puts "The weather today is #{conditions} and #{temp} degrees"
