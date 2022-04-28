class RecArea < ApplicationRecord
  has_many :rec_area_activities
  has_many :activities, :through => :rec_area_activities

  def names_only
    names = []
    i = 0 
    while i < activities.length
      names << activities[i]["name"]
      i += 1
    end
    return names
  end


end
