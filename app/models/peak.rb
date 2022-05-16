class Peak < ApplicationRecord
  has_many :peak_reviews

  def rec_areas_within_ten_miles
    within_ten_miles = []
    rec_areas = RecArea.all
    rec_areas.each do |rec_area|
      distance = Geocoder::Calculations.distance_between([lat, long], [rec_area.lat, rec_area.long])
      # p distance.class
      if distance <= 10
        within_ten_miles << {
          rec_area_name: rec_area.name,
          rec_area_id: rec_area.id,
          distance: distance,
          lat: rec_area.lat,
          long: rec_area.long,
          activities: rec_area.activities
        }
      end
    end
    sorted = within_ten_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_ten_miles
  end

  def rec_areas_within_twenty_miles
    within_twenty_miles = []
    rec_areas = RecArea.all
    rec_areas.each do |rec_area|
      distance = Geocoder::Calculations.distance_between([lat, long], [rec_area.lat, rec_area.long])
      # p distance.class
      if distance <= 20
        within_twenty_miles << {
          rec_area_name: rec_area.name,
          rec_area_id: rec_area.id,
          distance: distance,
          lat: rec_area.lat,
          long: rec_area.long,
          activities: rec_area.activities
        }
      end
    end
    sorted = within_twenty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_twenty_miles
  end

  def rec_areas_within_thirty_miles
    within_thirty_miles = []
    rec_areas = RecArea.all
    rec_areas.each do |rec_area|
      distance = Geocoder::Calculations.distance_between([lat, long], [rec_area.lat, rec_area.long])
      # p distance.class
      if distance <= 30
        within_thirty_miles << {
          rec_area_name: rec_area.name,
          rec_area_id: rec_area.id,
          distance: distance,
          lat: rec_area.lat,
          long: rec_area.long,
          activities: rec_area.activities
        }
      end
    end
    sorted = within_thirty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_thirty_miles
  end

  def rec_areas_within_forty_miles
    within_forty_miles = []
    rec_areas = RecArea.all
    rec_areas.each do |rec_area|
      distance = Geocoder::Calculations.distance_between([lat, long], [rec_area.lat, rec_area.long])
      # p distance.class
      if distance <= 40
        within_forty_miles << {
          rec_area_name: rec_area.name,
          rec_area_id: rec_area.id,
          distance: distance,
          lat: rec_area.lat,
          long: rec_area.long,
          activities: rec_area.activities
        }
      end
    end
    sorted = within_forty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_forty_miles
  end

  def rec_areas_within_fifty_miles
    within_fifty_miles = []
    rec_areas = RecArea.all
    rec_areas.each do |rec_area|
      distance = Geocoder::Calculations.distance_between([lat, long], [rec_area.lat, rec_area.long])
      # p distance.class
      if distance <= 50
        within_fifty_miles << {
          rec_area_name: rec_area.name,
          rec_area_id: rec_area.id,
          distance: distance,
          lat: rec_area.lat,
          long: rec_area.long,
          activities: rec_area.activities
        }
      end
    end
    sorted = within_fifty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_fifty_miles
  end

end
