class CreateTries < ActiveRecord::Migration[7.1]
  def change
    create_table :tries do |t|
      t.references :shot, null: false, foreign_key: true
      t.boolean :success

      t.timestamps
    end
  end
end
