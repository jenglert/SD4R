class User < ActiveRecord::Base
  extend ActiveSupport::Memoizable
  
  validates_presence_of :first_name, :last_name, :age, :gender, :email, :password
  validates_presence_of :desired_rent_min, :desired_rent_max, :desired_age_min
  validates_presence_of :user_description, :neighborhood_id, :desired_age_max, :desired_move_in_month
  validates_inclusion_of :has_a_room, :in => [true, false], :message => " must be specified"
  validates_inclusion_of :desired_smoking_preference, :in => [true, false], :message => " must be specified"
  
  validates_uniqueness_of :email, :if => Proc.new { |user| user.email }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :if => Proc.new { |user| user.email }
  
  validate :city_id_exists
  validate :neighborhood_id_exists
  
  belongs_to :city
  belongs_to :neighborhood
  
  has_many :user_notes
  has_many :event_signups
  has_many :events, :through => :event_signups
  
  def city_id_exists
    errors.add_to_base "Please select a City" if City.find_all_by_id(city_id).size == 0
  end
  
  def neighborhood_id_exists
    errors.add_to_base "Please select a Neighborhood" if Neighborhood.find_all_by_id(neighborhood_id).size == 0
  end
  
  def full_name
    "#{last_name}, #{first_name}"
  end
  
  def has_upcoming_local_event?
    return !next_local_event.nil?
  end
  memoize :has_upcoming_local_event?
  
  def next_local_event
    Event.find(:first, :conditions => ["neighborhood_id in (?)", neighborhood.close_neighorhoods.map(&:id)], :order => 'event_date')
  end
  memoize :next_local_event
  
  def move_in_month_friendly
    return "" if !desired_move_in_month
    
    "#{desired_move_in_month.strftime('%b %d, %Y')}"
  end
end
