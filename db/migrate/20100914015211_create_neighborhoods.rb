class CreateNeighborhoods < ActiveRecord::Migration
  def self.up
    create_table :neighborhoods do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :city_id

      t.timestamps
    end
    
    Neighborhood.create!(:name => "Hoboken/Jersey City", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Lower East Side / East Village", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Financial District", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Tribeca / SoHo", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Chelesea / Hell's Kitchen", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Murray Hill", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Upper East Side", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Upper West Side", :city_id => City.find_by_name("New York Metro"))
    Neighborhood.create!(:name => "Harlem", :city_id => City.find_by_name("New York Metro"))
  end

  def self.down
    drop_table :neighborhoods
  end
end
