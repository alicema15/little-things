class PlantsLocationDefault < ActiveRecord::Migration
  def change
    change_column_default(:plants, :location_id, 1)
  end
end
