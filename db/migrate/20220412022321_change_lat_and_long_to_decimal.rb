class ChangeLatAndLongToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :peaks, :lat, :decimal, precision: 4, scale: 8
    change_column :peaks, :long, :decimal, precision: 4, scale: 8, after: :float_val
  end
end
