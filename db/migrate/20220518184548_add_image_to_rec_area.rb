class AddImageToRecArea < ActiveRecord::Migration[7.0]
  def change
    add_column :rec_areas, :image_url, :string
  end
end
