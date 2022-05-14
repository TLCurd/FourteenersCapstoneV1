class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :peak_reviews
  has_many :rec_area_reviews

  def peak_review_names
    names = []
    peak_reviews.each do |review|
      names << review.peak.name
    end
    return names
  end

end
