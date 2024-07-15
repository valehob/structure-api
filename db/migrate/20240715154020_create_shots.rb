class CreateShots < ActiveRecord::Migration[7.1]
  def change
    create_table :shots do |t|
      t.references :drill, null: false, foreign_key: true
      t.text :diagram

      t.timestamps
    end
  end
end
