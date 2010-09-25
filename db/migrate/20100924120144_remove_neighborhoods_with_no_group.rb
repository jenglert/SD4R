class RemoveNeighborhoodsWithNoGroup < ActiveRecord::Migration
  def self.up
    Neighborhood.find(:all, :conditions => "grouping is null").each { |g| g.delete }
  end

  def self.down
  end
end
