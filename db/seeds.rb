# p Peak.all 
# peaks = Peak.all
# peaks.each do |peak|
#   distance = peak.distance
#   prominence = peak.prominence
#   elevation_gain = peak.elevation_gain
#   traffic_low = peak.traffic_low
#   traffic_high = peak.traffic_high
#   peak.update(distance: "#{distance} miles", prominence: "#{prominence} ft.", elevation_gain: "#{elevation_gain} ft.", traffic_low: "#{traffic_low} people per year", traffic_high: "#{traffic_high} people per year")
# end

# peaks = Peak.all
# peaks.each do |peak|
#   prominence = peak.prominence
#   array = prominence.split(" ")
#   prominence = array.slice(0, 2).join(" ")
#   peak.update(prominence: prominence)
# end