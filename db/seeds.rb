# RecArea.destroy_all
RecAreaActivity.destroy_all


# response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?full=true&offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse
# # awesome_print response["RECDATA"]
# i = 0
# while i < response["RECDATA"].length
#   rec_area = RecArea.new(name: response["RECDATA"][i]["RecAreaName"], description: response["RECDATA"][i]["RecAreaDescription"], directions: response["RECDATA"][i]["RecAreaDirections"], phone_number: response["RECDATA"][i]["RecAreaPhone"], email: response["RECDATA"][i]["RecAreaEmail"], lat: response["RECDATA"][i]["RecAreaLatitude"], long: response["RECDATA"][i]["RecAreaLongitude"])
#   j = 0
#   while j < response["RECDATA"][i]["ACTIVITY"].length
#     n = response["RECDATA"][i]["ACTIVITY"][j]["ActivityID"]
#     rec_area[:activity] << n
#     j += 1
  
#   end
#   rec_area.save
#   i += 1
#   awesome_print rec_area
# end


rec_areas = RecArea.all
rec_areas.each do |rec_area|
  i = 0
  while i < rec_area[:activity].length
    rec_area_activity = RecAreaActivity.new(
      activity_id: rec_area[:activity][i].to_i,
      rec_area_id: rec_area[:id]
    )
    rec_area_activity.save
    i += 1
  end
end

####----- BELOW THIS IS ESSENTIALLY ALL OF THE ORIGINAL CODE I USED IN THE SEEDS TO GET TO MY LAST MAJOR COMMIT. TIME NOW IS 11 PM 4/27/22 ------####


# require 'http'
# require 'awesome_print'

# RecAreaActivity.destroy_all

# # p Peak.all 
# # peaks = Peak.all
# # peaks.each do |peak|
# #   distance = peak.distance
# #   prominence = peak.prominence
# #   elevation_gain = peak.elevation_gain
# #   traffic_low = peak.traffic_low
# #   traffic_high = peak.traffic_high
# #   peak.update(distance: "#{distance} miles", prominence: "#{prominence} ft.", elevation_gain: "#{elevation_gain} ft.", traffic_low: "#{traffic_low} people per year", traffic_high: "#{traffic_high} people per year")
# # end

# # peaks = Peak.all
# # peaks.each do |peak|
# #   prominence = peak.prominence
# #   array = prominence.split(" ")
# #   prominence = array.slice(0, 2).join(" ")
# #   peak.update(prominence: prominence)
# # end

# # a = HTTP.get("https://ridb.recreation.gov/api/v1/activities?offset=0&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse

# # i = 0
# # while i < a["RECDATA"].length
# #   activity = Activity.create(name: a["RECDATA"][i]["ActivityName"])
# #   i += 1
# # end

response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse
awesome_print response["RECDATA"]
i = 0
while i < response["RECDATA"].length
  rec_area = RecArea.create(name: rec_areas["RECDATA"][i]["RecAreaName"], description: rec_areas["RECDATA"][i]["RecAreaDescription"], directions: rec_areas["RECDATA"][i]["RecAreaDirections"], phone_number: rec_areas["RECDATA"][i]["RecAreaPhone"], email: rec_areas["RECDATA"][i]["RecAreaEmail"], lat: rec_areas["RECDATA"][i]["RecAreaLatitude"], long: rec_areas["RECDATA"][i]["RecAreaLongitude"])
  i += 1
end

# # awesome_print rec_areas = RecArea.all
# # rec_areas = RecArea.all
# # rec_area_activities = RecAreaActivity.new(
# #   activity_id: activity.id,
# #   rec_area_id: rec_area.id
# # )

# # response = HTTP.get("https://ridb.recreation.gov/api/v1/recareas?full=true&offset=0&state=CO&apikey=1fd36b70-43e5-461b-979a-7cb7f80883bf").parse

# # rec_areas = RecArea.all
# # i = 0
# # rec_area_activities = []
# # rec_areas.each do |rec_area|
# #   while i < response["RECDATA"].length
# #     j = 0
# #     while j < response["RECDATA"][i]["ACTIVITY"].length
# #       name = response["RECDATA"]["RecAreaName"]
# #       rec_area_activity = RecAreaActivity.create!(
# #       rec_area_id: rec_areas[name][:id],
# #       activity_id: response["RECDATA"][i]["ACTIVITY"][j]["ActivityID"]
# #     )
# #     rec_area_activities << rec_area_activity
# #     j += 1
# #   end
# #     name= ""
# #     i += 1
# #   end
# # end
# # awesome_print rec_area_activities
