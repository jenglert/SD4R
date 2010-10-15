class UserLeadsController < ApplicationController
  
  def save
    @user_lead = UserLead.new(params[:user_lead])
    
    @user_lead.save
    
    send_redirect 'user_lead/thank_you'
  end
  
  def thank_you
    
  end
end
