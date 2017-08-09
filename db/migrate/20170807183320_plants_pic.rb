class PlantsPic < ActiveRecord::Migration
  def change
    add_column :plants, :plant_pic, :string, :default => ""
  end
end
