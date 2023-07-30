class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :year
      t.string :make
      t.string :model
      t.string :size
      t.decimal :miles
      t.decimal :hours

      t.timestamps
    end
  end
end
