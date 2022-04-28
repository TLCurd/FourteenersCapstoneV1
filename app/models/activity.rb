class Activity < ApplicationRecord
  has_many :rec_area_activities
  has_many :rec_areas, :through => :rec_area_activities
end
