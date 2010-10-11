class Admin::LandingPagesController < AdminController
  
  def index
    @landing_pages = LandingPage.all
  end
  
  def new
    @landing_page = LandingPage.new
  end
  
  def create
    @landing_page = LandingPage.new(params[:landing_page])
    
    if @landing_page.save
      redirect_to :action => 'show', :id => @landing_page.id
    else
      render :action => 'new'
    end
  end
  
  def show
    @landing_page = LandingPage.find(params[:id])
  end
  
  def delete_json
    @landing_page = LandingPage.find(params[:id])
    @landing_page.destroy
    
    render :layout => 'blank'
  end
  
end