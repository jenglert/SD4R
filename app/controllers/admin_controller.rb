class AdminController < ApplicationController
  
  before_filter :http_auth
  
  layout "admin"
  
  def index
    
  end
  
  def http_auth
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == 'admin' && password == 'vr00mat3s'
    end
    
  end
  
end