class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    City.create!(:id => 1, :name => "Atlanta, GA")    
    City.create!(:id => 2, :name => "Boston, MA")
    City.create!(:id => 3, :name => "Chicago, Il")
    City.create!(:id => 4, :name => "Cleveland, OH")
    City.create!(:id => 5, :name => "Dallas, TXT")
    City.create!(:id => 6, :name => "Detroit, MI")    
    City.create!(:id => 7, :name => "Houston, TX")
    City.create!(:id => 8, :name => "Los Angeles, CA")
    City.create!(:id => 9, :name => "New York Metro")
    City.create!(:id => 10, :name => "Miami, FL")
    City.create!(:id => 11, :name => "Philadelphia, PA")
    City.create!(:id => 12, :name => "Phoenix, AZ")    
    City.create!(:id => 13, :name => "San Francisco, CA") 
    City.create!(:id => 14, :name => "Seattle, WA")
    City.create!(:id => 15, :name => "Washington D.C.")   
  end

  def self.down
    drop_table :cities
  end
end
