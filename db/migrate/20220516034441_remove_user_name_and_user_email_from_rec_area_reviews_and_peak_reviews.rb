class RemoveUserNameAndUserEmailFromRecAreaReviewsAndPeakReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :peak_reviews, :user_email
    remove_column :peak_reviews, :user_name
    remove_column :rec_area_reviews, :user_name
    remove_column :rec_area_reviews, :user_email
  end
end
