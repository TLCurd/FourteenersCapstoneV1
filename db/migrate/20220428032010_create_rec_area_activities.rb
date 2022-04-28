class CreateRecAreaActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :rec_area_activities do |t|
      t.integer "rec_area_id"
      t.integer "activity_id"
      t.timestamps
    end
  end
end
