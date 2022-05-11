class CreatePeakReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :peak_reviews do |t|
      t.integer :user_id
      
      t.integer :peak_id
      
      t.text :review

      t.timestamps
    end
  end
end
