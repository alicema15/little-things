class LongitudeDefault < ActiveRecord::Migration
  def change
    change_column_default(:locations, :longitude, 0.0000000)
  end
end
