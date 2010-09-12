  require 'resolv'
class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :birth_date, :gender, :email
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
