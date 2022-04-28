class Activity < ApplicationRecord
  has_many :rec_area_activities
  has_many :rec_areas, :through => :rec_area_activities

  def rec_area_names_ids
    area = []
    # ids = []
    i = 0 
    while i < rec_areas.length
      area << [[rec_areas[i]["name"]], [rec_areas[i]["id"]]]
      # ids << rec_areas[i]["id"]
      i += 1
    end
    return area
  end

end
