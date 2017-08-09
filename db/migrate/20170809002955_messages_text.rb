class MessagesText < ActiveRecord::Migration
  def change
    add_column(:messages, :text, :string, :default => "")
  end
end
