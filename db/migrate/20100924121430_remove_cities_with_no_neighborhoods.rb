class RemoveCitiesWithNoNeighborhoods < ActiveRecord::Migration
  def self.up
    City.all.each do |city|
      if city.neighborhoods.count == 0
        city.delete
      end
    end
  end

  def self.down
  end
end
