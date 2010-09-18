class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :age, :gender, :email, :has_kids, :has_pets
  validates_presence_of :desired_rent_min, :desired_rent_max, :desired_number_of_roommates, :desired_age_min
  validates_presence_of :desired_age_max, :desired_smoking_preference
  validates_presence_of :roomy_kids, :roomy_pets, :user_description
  
  validates_uniqueness_of :email, :if => Proc.new { |user| user.email }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :if => Proc.new { |user| user.email }
  
  validate :validate_email_domain
  

  def validate_email_domain
    return false
      return true if !email
      domain_matches = email.match(/\@(.+)/)
      return false if !domain_matches || domain_matches.size == 0
      
      Resolv::DNS.open do |dns|
          @mx = dns.getresources(domain, Resolv::DNS::Resource::IN::MX)
      end
      @mx.size > 0 ? true : false
  end

end
