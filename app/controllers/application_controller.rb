# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  layout 'standard'

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def set_logged_in(user) 
    cookies[:logged_in] = user.id
  end
  
  def current_user
    user_id = cookies[:logged_in]
    
    User.find(user_id)
  end
  helper_method :current_user
end
