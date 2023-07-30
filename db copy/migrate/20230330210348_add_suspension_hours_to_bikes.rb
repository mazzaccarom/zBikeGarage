class AddSuspensionHoursToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :suspension_hours_30, :integer
    add_column :bikes, :suspension_hours_50, :integer
    add_column :bikes, :suspension_hours_100, :integer
    add_column :bikes, :suspension_hours_200, :integer
  end
end
