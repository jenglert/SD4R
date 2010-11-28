# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  layout 'standard'

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def set_logged_in(user) 
    cookies[:logged_in] = { :value => user.id, :expires => 360.days.from_now}
  end
  
  def current_user
    user_id = cookies[:logged_in]
    
    return User.find(user_id) if user_id
    
  rescue ActiveRecord::RecordNotFound
    return nil
  end
  helper_method :current_user
  
  def logout_user
    cookies[:logged_in] = nil
  end
  helper_method :logout_user
end
