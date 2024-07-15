class CreateDrills < ActiveRecord::Migration[7.1]
  def change
    create_table :drills do |t|
      t.string :name
      t.text :diagram

      t.timestamps
    end
  end
end
