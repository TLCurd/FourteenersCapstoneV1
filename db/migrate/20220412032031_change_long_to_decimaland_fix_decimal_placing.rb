class ChangeLongToDecimalandFixDecimalPlacing < ActiveRecord::Migration[7.0]
  def change
    change_column :peaks, :lat, :decimal, precision: 10, scale: 6
    change_column :peaks, :long, :decimal, precision: 10, scale: 6
  end
end
