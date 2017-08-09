class LatitudeDefault < ActiveRecord::Migration
  def change
    change_column_default(:locations, :latitude, 0.0000000)
  end
end
