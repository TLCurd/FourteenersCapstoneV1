class RecArea < ApplicationRecord
  has_many :rec_area_activities
  has_many :activities, :through => :rec_area_activities

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

 


end
