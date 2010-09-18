class ChangeCityIdOnNycNeighborhoods < ActiveRecord::Migration
  def self.up
    Neighborhood.all.each { |n| n.update_attribute(:city_id, 9)}
  end

  def self.down
  end
end
