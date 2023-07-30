class ServiceAlert < ActiveRecord::Migration[6.1]
  def change
    add_column :bikes, :thirty_hour_alert, :boolean, default: false
    add_column :bikes, :fifty_hour_alert, :boolean, default: false
    add_column :bikes, :hundred_hour_alert, :boolean, default: false
    add_column :bikes, :two_hundred_hour_alert, :boolean, default: false
  end
end

