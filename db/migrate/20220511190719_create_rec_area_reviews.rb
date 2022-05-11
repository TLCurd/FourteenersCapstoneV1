class CreateRecAreaReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :rec_area_reviews do |t|
      t.integer :user_id
      t.string :user_name
      t.string :user_email
      t.integer :rec_area_id
      t.text :review

      t.timestamps
    end
  end
end
