class FixLatitudeInEvent < ActiveRecord::Migration
  def change
  	rename_column :events, :latitue, :latitude
  end
end
