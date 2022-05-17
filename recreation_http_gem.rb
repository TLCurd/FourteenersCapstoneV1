require 'http'
require 'awesome_print'
require 'pry'

response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?full=true&offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse

# response["RECDATA"].each_with_index do |data, i|
#   binding.pry
#   p i
#   # p data["MEDIA"][0]["URL"] 
# end

response["RECDATA"].each do |area|

  if area["MEDIA"] == nil || area["MEDIA"][0] == nil
    p nil
  else
    awesome_print area
    awesome_print area["MEDIA"]
  end
end

# if response["RECDATA"][141]["MEDIA"] == nil
#   p nil
# else
#   awesome_print response["RECDATA"][141]["MEDIA"][0]["URL"]
# end

# if response["RECDATA"][142]["MEDIA"] == nil
#   p nil
# else
#   awesome_print response["RECDATA"][142]["MEDIA"][0]["URL"]
# end

# if response["RECDATA"][143]["MEDIA"] == nil
#   p nil
# else
#   awesome_print response["RECDATA"][143]["MEDIA"][0]["URL"]
# end

# if response["RECDATA"][144]["MEDIA"] == nil || response["RECDATA"][144]["MEDIA"][0] == nil
#   p nil
# else
#   awesome_print response["RECDATA"][144]["MEDIA"][0]["URL"]
# end

# awesome_print response

# awesome_print response
# i = 0
# while i < response["RECDATA"].length
#   rec_area = RecArea.new(name: response["RECDATA"][i]["RecAreaName"], description: response["RECDATA"][i]["RecAreaDescription"], directions: response["RECDATA"][i]["RecAreaDirections"], phone_number: response["RECDATA"][i]["RecAreaPhone"], email: response["RECDATA"][i]["RecAreaEmail"], lat: response["RECDATA"][i]["RecAreaLatitude"], long: response["RECDATA"][i]["RecAreaLongitude"])
#   j = 0
#   while j < response["RECDATA"][i]["ACTIVITY"].length
#     rec_area["activity"] << response["RECDATA"][i]["ACTIVITY"][j]["ActivityID"]
#     j += 1
  
#   end
#   rec_area.save
#   i += 1
#   awesome_print rec_area
# end

####

# response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?full=true&offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse

# rec_areas = RecArea.all
# i = 0
# rec_area_activities = []
# rec_areas.each do |rec_area|
#   while i < response["RECDATA"].length
#     j = 0
#     while j < response["RECDATA"][i]["ACTIVITY"].length
#       name = response["RECDATA"]["RecAreaName"]
#       rec_area_activity = RecAreaActivity.create!(
#       rec_area_id: rec_areas[name][:id],
#       activity_id: response["RECDATA"][i]["ACTIVITY"][j]["ActivityID"]
#     )
#     rec_area_activities << rec_area_activity
#     j += 1
#   end
#     name= ""
#     i += 1
#   end
# end
# awesome_print rec_area_activities


####----- BELOW THIS IS ESSENTIALLY ALL OF THE ORIGINAL CODE I USED TO PREP FOR THE SEEDS TO GET TO MY LAST MAJOR COMMIT. TIME NOW IS 11 PM 4/27/22 ------####

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

# rec_areas = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?full=true&offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse

# awesome_print rec_areas["RECDATA"]

# response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse
# awesome_print response["RECDATA"]


### FOUNDATION FOR SEEDS FILE RecAreaActivity
# rec_areas = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?full=true&limit=5&offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse

# # awesome_print rec_areas
# i = 0
# rec_area_activities = []
# while i < rec_areas["RECDATA"].length
#   j = 0
#   while j < rec_areas["RECDATA"][i]["ACTIVITY"].length
#   rec_area_activity = RecAreaActivity.new(
#     rec_area_id: rec_area.id,
#     activity_id: rec_areas["RECDATA"][i]["ACTIVITY"][j]["ActivityID"]
#   )
#   rec_area_activities << rec_area_activity.to_i
#   j += 1
#   end
#   i += 1
# end
# awesome_print rec_area_activities
    