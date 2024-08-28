class CreateProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :progresses do |t|
      t.references :level, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :score

      t.timestamps
    end
  end
end
