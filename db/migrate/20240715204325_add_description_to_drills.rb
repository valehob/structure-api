class AddDescriptionToDrills < ActiveRecord::Migration[7.1]
  def change
    add_column :drills, :description, :text
  end
end
