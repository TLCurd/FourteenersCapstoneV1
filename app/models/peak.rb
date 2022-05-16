class Peak < ApplicationRecord
  has_many :peak_reviews


  def rec_areas_within_twenty_miles
    within_twenty_miles = []
    rec_areas = RecArea.all
    rec_areas.each do |rec_area|
      distance = Geocoder::Calculations.distance_between([lat, long], [rec_area.lat, rec_area.long])
      # p distance.class
      if distance > 0 && distance <= 50
        within_twenty_miles << {
          rec_area_name: rec_area.name,
          distance: distance
        }
      end
    end
    sorted = within_twenty_miles.sort_by { |k| k[:distance]}
    return sorted
    # return within_twenty_miles
  end
end
