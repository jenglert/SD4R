class Event < ActiveRecord::Base
  validates_presence_of :event_date, :title, :location, :host_name, :host_email, :host_phone, :notes
  validate :neighborhood_id_exists

  belongs_to :neighborhood
  has_many :users, :through => :event_signup
  has_many :event_signups  
  
  named_scope :upcoming, :order => 'event_date desc', :conditions => ["event_date > ?", Time.now]
  
  def neighborhood_id_exists
    errors.add_to_base "Please select a Neighborhood" if Neighborhood.find_all_by_id(neighborhood_id).size == 0
  end

end
