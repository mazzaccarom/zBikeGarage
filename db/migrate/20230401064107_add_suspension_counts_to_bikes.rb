class AddSuspensionCountsToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :count_30, :integer, default: 0
    add_column :bikes, :count_50, :integer, default: 0
    add_column :bikes, :count_100, :integer, default: 0
    add_column :bikes, :count_200, :integer, default: 0
  end
end
