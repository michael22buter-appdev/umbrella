p "Where are you located?"

# user_location = gets.chomp

user_location = "Memphis"

p user_location

gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{user_location}&key=GMAPS_KEY"

 gmaps_url

 require "open-uri"

raw_data = URI.open(gmaps_url).read

  raw_data.length

 require "json"

 parsed_data = JSON.parse(raw_data)

 results_array = parsed_data.fetch("results")

 first_result = results_array.at(0)

 geo = first_result.fetch("geometry")

 loc = geo.fetch("location")

 latitude = loc.fetch("lat")
 longitude = loc.fetch("lng")

 p latitude
 p longitude

 dark_sky_url = "https://api.darksky.net/forecast/DARK_SKY_KEY/41.8887,-87.6355"

 dark_sky_url

 require "open-uri"

 gmaps_key = ENV.fetch("GMAPS_KEY")

 dark_sky_key = ENV.fetch("DARK_SKY_KEY")
