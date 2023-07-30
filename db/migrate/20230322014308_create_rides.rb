class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.date :date
      t.string :location
      t.string :miles
      t.string :hours

      t.timestamps
    end
  end
end
