class LandingPagesController < ApplicationController
  
  def index
    @landing_page = LandingPage.find_by_url_keyword("#{params[:path]}")

    @user_lead = UserLead.new(:email => UserLead.default_email)
    
    redirect_to '/' if !@landing_page
  end
  
end