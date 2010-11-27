class LandingPagesController < ApplicationController
  
  def index
    @landing_page = LandingPage.find_by_url_keyword("#{params[:path]}")

    @user_lead = UserLead.new(:email => UserLead.default_email)
    
    if !@landing_page
      flash[:error] = "Unable to find the page you have specified.  Please double check the URL."
      redirect_to '/' 
    end
  end
  
  def submit_user_lead
    
    @user_lead = UserLead.new(params[:user_lead])
    
    @user_lead.save
    render :layout => false
  end
  
end