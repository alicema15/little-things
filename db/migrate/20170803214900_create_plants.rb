class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :type
      t.integer :user_id
      t.integer :location_id
    end
  end
end
