class CreateParts < ActiveRecord::Migration[7.0]
  def change
    create_table :parts do |t|
      t.string :part_type
      t.string :brand
      t.string :model
      t.integer :year
      t.references :bike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
