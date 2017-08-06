class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :messages
      t.string :message_title
      
    end
  end
end
