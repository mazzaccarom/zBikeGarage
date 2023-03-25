class AddBikeToRides < ActiveRecord::Migration[7.0]
  def change
    add_reference :rides, :bike, null: false, foreign_key: true
  end
end
