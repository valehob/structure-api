class CreateLevels < ActiveRecord::Migration[7.1]
  def change
    create_table :levels do |t|
      t.integer :order
      t.string :name

      t.timestamps
    end
  end
end
