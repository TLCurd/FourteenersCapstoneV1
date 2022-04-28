class RecArea < ApplicationRecord
  has_many :rec_area_activities
  has_many :activities, :through => :rec_area_activities
end
