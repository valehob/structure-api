class AddRunToTries < ActiveRecord::Migration[7.1]
  def change
    add_reference :tries, :run, null: false, foreign_key: true
  end
end
