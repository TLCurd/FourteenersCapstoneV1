class RecArea < ApplicationRecord
  has_many :rec_area_activities
  has_many :activities, :through => :rec_area_activities
  has_many :rec_area_reviews

  def names_ids
    info = []
    # ids = []
    i = 0 
    while i < activities.length
      info << [[activities[i]["name"]], [activities[i]["id"]]]
      # ids << activities[i]["id"]
      i += 1
    end
    return info
  end

  def peaks_within_ten_miles
    within_ten_miles = []
    peaks = Peak.all
    peaks.each do |peak|
      distance = Geocoder::Calculations.distance_between([lat, long], [peak.lat, peak.long])
      # p distance.class
      if distance <= 10
        within_ten_miles << {
          peak_name: peak.name,
          peak_id: peak.id,
          peak_photo: peak.photo,
          peak_range: peak.range,
          peak_elevation: peak.elevation,
          peak_official_14er: peak.official_14er,
          elevation_gain: peak.elevation_gain,
          peak_prominence: peak.prominence,
          distance: distance,
          lat: peak.lat,
          long: peak.long,
        }
      end
    end
    sorted = within_ten_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_ten_miles
  end

  def peaks_within_twenty_miles
    within_twenty_miles = []
    peaks = Peak.all
    peaks.each do |peak|
      distance = Geocoder::Calculations.distance_between([lat, long], [peak.lat, peak.long])
      # p distance.class
      if distance <= 20
        within_twenty_miles << {
          peak_name: peak.name,
          peak_id: peak.id,
          peak_photo: peak.photo,
          peak_range: peak.range,
          peak_elevation: peak.elevation,
          peak_official_14er: peak.official_14er,
          elevation_gain: peak.elevation_gain,
          peak_prominence: peak.prominence,
          distance: distance,
          lat: peak.lat,
          long: peak.long,
        }
      end
    end
    sorted = within_twenty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_twenty_miles
  end

  def peaks_within_thirty_miles
    within_thirty_miles = []
    peaks = Peak.all
    peaks.each do |peak|
      distance = Geocoder::Calculations.distance_between([lat, long], [peak.lat, peak.long])
      # p distance.class
      if distance <= 30
        within_thirty_miles << {
          peak_name: peak.name,
          peak_id: peak.id,
          peak_photo: peak.photo,
          peak_range: peak.range,
          peak_elevation: peak.elevation,
          peak_official_14er: peak.official_14er,
          elevation_gain: peak.elevation_gain,
          peak_prominence: peak.prominence,
          distance: distance,
          lat: peak.lat,
          long: peak.long,
        }
      end
    end
    sorted = within_thirty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_thirty_miles
  end

  def peaks_within_forty_miles
    within_forty_miles = []
    peaks = Peak.all
    peaks.each do |peak|
      distance = Geocoder::Calculations.distance_between([lat, long], [peak.lat, peak.long])
      # p distance.class
      if distance <= 40
        within_forty_miles << {
          peak_name: peak.name,
          peak_id: peak.id,
          peak_photo: peak.photo,
          peak_range: peak.range,
          peak_elevation: peak.elevation,
          peak_official_14er: peak.official_14er,
          elevation_gain: peak.elevation_gain,
          peak_prominence: peak.prominence,
          distance: distance,
          lat: peak.lat,
          long: peak.long,
        }
      end
    end
    sorted = within_forty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_forty_miles
  end

  def peaks_within_fifty_miles
    within_fifty_miles = []
    peaks = Peak.all
    peaks.each do |peak|
      distance = Geocoder::Calculations.distance_between([lat, long], [peak.lat, peak.long])
      # p distance.class
      if distance <= 50
        within_fifty_miles << {
          peak_name: peak.name,
          peak_id: peak.id,
          peak_photo: peak.photo,
          peak_range: peak.range,
          peak_elevation: peak.elevation,
          peak_official_14er: peak.official_14er,
          elevation_gain: peak.elevation_gain,
          peak_prominence: peak.prominence,
          distance: distance,
          lat: peak.lat,
          long: peak.long,
        }
      end
    end
    sorted = within_fifty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_fifty_miles
  end

end
