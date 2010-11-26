class Event < ActiveRecord::Base
  validates_presence_of :event_date, :title, :neighborhood_id
  validate :neighborhood_id_exists

  belongs_to :neighborhood
  has_many :users, :through => :event_signup
  has_many :event_signups  
  
  def neighborhood_id_exists
    errors.add_to_base "Please select a Neighborhood" if Neighborhood.find_all_by_id(neighborhood_id).size == 0
  end

end
