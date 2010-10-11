class AddUserIdToNote < ActiveRecord::Migration
  def self.up
    add_column :user_notes, :user_id, :integer
  end

  def self.down
  end
end
