class AddUserNameAndUserEmailToPeakReview < ActiveRecord::Migration[7.0]
  def change
    add_column :peak_reviews, :user_name, :string
    add_column :peak_reviews, :user_email, :string
  end
end
