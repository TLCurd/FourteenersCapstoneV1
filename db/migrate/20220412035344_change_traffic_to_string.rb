class ChangeTrafficToString < ActiveRecord::Migration[7.0]
  def change
    change_column :peaks, :traffic_high, :string
    change_column :peaks, :traffic_low, :string
  end
end
