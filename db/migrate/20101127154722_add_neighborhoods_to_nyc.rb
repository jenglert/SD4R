class AddNeighborhoodsToNyc < ActiveRecord::Migration
  def self.up
    Neighborhood.create(:name => 'Hoboken', :city_id => 9, :grouping => 'New Jersey')
    Neighborhood.create(:name => 'Jersey City', :city_id => 9, :grouping => 'New Jersey')
    Neighborhood.create(:name => 'Other', :city_id => 9, :grouping => 'New Jersey')
  end

  def self.down
  end
end
