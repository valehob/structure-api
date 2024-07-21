class AddMakesToRuns < ActiveRecord::Migration[7.1]
  def change
    add_column :runs, :makes, :integer
  end
end
