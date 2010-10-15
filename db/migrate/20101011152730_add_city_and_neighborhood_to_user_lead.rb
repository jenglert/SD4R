class AddCityAndNeighborhoodToUserLead < ActiveRecord::Migration
  def self.up
    add_column :user_leads, :city_id, :integer
    add_column :user_leads, :neighborhood_id, :integer
  end

  def self.down
  end
end
