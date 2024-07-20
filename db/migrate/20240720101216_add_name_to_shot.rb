class AddNameToShot < ActiveRecord::Migration[7.1]
  def change
    add_column :shots, :name, :string
  end
end
