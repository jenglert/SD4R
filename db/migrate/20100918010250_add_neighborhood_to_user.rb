class AddNeighborhoodToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :neighborhood_id, :integer
  end

  def self.down
  end
end
