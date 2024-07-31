class AddTopicAndLevelToDrill < ActiveRecord::Migration[7.1]
  def change
    add_reference :drills, :level, null: false, foreign_key: true
    add_reference :drills, :topic, null: false, foreign_key: true
  end
end
