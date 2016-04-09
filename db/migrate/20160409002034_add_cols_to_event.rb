class AddColsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :latitue, :float
    add_column :events, :longitude, :float
  end
end
