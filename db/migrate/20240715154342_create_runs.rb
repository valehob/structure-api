class CreateRuns < ActiveRecord::Migration[7.1]
  def change
    create_table :runs do |t|
      t.references :drill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
