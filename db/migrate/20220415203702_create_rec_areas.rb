class CreateRecAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :rec_areas do |t|
      t.string :name
      t.string :description
      t.string :directions
      t.string :phone_number
      t.string :email
      t.string :lat
      t.string :long
      t.string :organization

      t.timestamps
    end
  end
end
