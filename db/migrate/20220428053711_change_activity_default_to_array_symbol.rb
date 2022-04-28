class ChangeActivityDefaultToArraySymbol < ActiveRecord::Migration[7.0]
  def change
    change_column :rec_areas, :activity, :string, array: true, default: [] 
  end
end
