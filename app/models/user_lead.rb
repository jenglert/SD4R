class UserLead < ActiveRecord::Base
  
  validates_presence_of :email, :city_id, :neighborhood_id
  
  validate :city_id_exists
  validate :neighborhood_id_exists
  
  def city_id_exists
    errors.add_to_base "Please select a City" if City.find_all_by_id(city_id).size == 0
  end
  
  def neighborhood_id_exists
    errors.add_to_base "Please select a Neighborhood" if Neighborhood.find_all_by_id(neighborhood_id).size == 0
  end
  
  def self.default_email
    '             --email--'
  end
end
