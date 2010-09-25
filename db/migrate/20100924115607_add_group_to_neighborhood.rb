class AddGroupToNeighborhood < ActiveRecord::Migration
  def self.up
    add_column :neighborhoods, :grouping, :string
  end

  def self.down
  end
end
