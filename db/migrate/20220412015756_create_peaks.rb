class CreatePeaks < ActiveRecord::Migration[7.0]
  def change
    create_table :peaks do |t|
      t.string :name
      t.string :range
      t.string :elevation
      t.string :official_14er
      t.string :prominence
      t.string :isolation
      t.integer :lat
      t.integer :long
      t.string :route
      t.string :distance
      t.string :elevation_gain
      t.string :difficulty
      t.integer :traffic_low
      t.integer :traffic_high
      t.string :photo

      t.timestamps
    end
  end
end
