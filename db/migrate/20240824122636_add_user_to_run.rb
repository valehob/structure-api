class AddUserToRun < ActiveRecord::Migration[7.1]
  def change
    add_reference :runs, :user, null: false, foreign_key: true
  end
end
