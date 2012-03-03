# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  extend ActiveSupport::Memoizable

  before_filter :show_event_splash
  
  layout 'standard2'

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def set_logged_in(user) 
    cookies[:logged_in] = { :value => user.id, :expires => 360.days.from_now}
  end
  
  def logged_in_filter
    if !current_user
      redirect_to '/'
    end
  end

  def show_event_splash
    user = current_user
    return if !user
    
    if event = user.next_local_event
      shown_splash_recently = false # !cookies[:shown_next_event_splash].nil?
      
      if !shown_splash_recently
        @next_event_splash = event     
        cookies[:shown_next_event_splash] = { :value => true, :expires => 3.days.from_now}   
      end
    end
    
    return false
  end

  def logged_in?
    !current_user.nil?
  end
  helper_method :logged_in?
  
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
