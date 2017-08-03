class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.float :longitude
      t.float :latitude
      t.string :first_name
    end
  end
end
