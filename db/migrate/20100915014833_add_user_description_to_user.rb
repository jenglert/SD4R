class AddUserDescriptionToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_description, :string
  end

  def self.down
  end
end
