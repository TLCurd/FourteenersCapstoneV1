class Peak < ApplicationRecord
  has_many :peak_reviews

  def user_name
    name = peak_review.user.name
    return name
  end
end
