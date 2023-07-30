class SetSuspensionHoursToZero < ActiveRecord::Migration[7.0]
  def change
    change_column :bikes, :suspension_hours_30, :integer, default: 0
    change_column :bikes, :suspension_hours_50, :integer, default: 0
    change_column :bikes, :suspension_hours_100, :integer, default: 0
    change_column :bikes, :suspension_hours_200, :integer, default: 0
  end
end
