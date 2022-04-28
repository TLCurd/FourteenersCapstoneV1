require 'http'
require 'awesome_print'

# Activities
# puts "Please enter your desired activity:"
# answer = gets.chomp

# response = HTTP.get("https://ridb.recreation.gov/api/v1/activities?query=#{answer}&limit=50&offset=0&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf")

# activities = response.parse

# # activities["RECDATA"]
# # awesome_print activities
# activity_names = []
# activities["RECDATA"].each do |activity|
#   activity_names << activity["ActivityName"]
# end
# awesome_print activity_names

# Recreation Areas

# FULL URL W/ MAXIMUM PARAMS AVAILABLE
# https://ridb.recreation.gov/api/v1/recareas?query=park&limit=50&offset=0&full=true&state=CO,VA,NC&activity=6,BOATING&latitude=-118.0186111&longitude=43.88037021&radius=9.75&lastupdated=10-01-2018&sort=ID
# puts "Please enter the official state abbreviation you would like to recreate in:"
# state = gets.chomp.upcase
# puts "Enter the activity you are most interested in:"
# activity = gets.chomp.upcase
# response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?query=park&limit=50&offset=0&full=true&state=#{state}&activity=#{activity}&sort=ID&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf")

# awesome_print response.parse

# puts "Please enter a keyword to refine your search:"
# keyword = gets.chomp.downcase
# puts "Which state are you wanting to travel to? Please enter official state abbreviation."
# state = gets.chomp.upcase

# response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?query=#{keyword}&state=#{state}&sort=ID&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf")

# areas = response.parse
# names = []
# areas["RECDATA"].each do |area|
#   names << area["RecAreaName"]
# end
# awesome_print names

# response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?limit=50&offset=0&state=CO")

# awesome_print response.parse

rec_areas = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?full=true&offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse

awesome_print rec_areas