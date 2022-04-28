class AddActivityArrayToRecArea < ActiveRecord::Migration[7.0]
  def change
    add_column :rec_areas, :activity, :string, array: true
  end
end
