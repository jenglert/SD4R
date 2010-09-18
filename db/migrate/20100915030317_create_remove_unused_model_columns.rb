class CreateRemoveUnusedModelColumns < ActiveRecord::Migration
  def self.up
    remove_column :users, :available_days
    remove_column :users, :current_zip_code
    remove_column :users, :current_state
    remove_column :users, :current_address
    remove_column :users, :desired_location_id
  end

  def self.down
  end
end
