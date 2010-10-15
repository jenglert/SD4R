class UserLead < ActiveRecord::Base
  
  def self.default_email
    '             --email--'
  end
end
