class MessagesPlantId < ActiveRecord::Migration
  def change
      add_column(:messages, :plant_id, :integer)
  end
end
