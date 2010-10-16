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
  
  def update
    LandingPage.find(params[:id]).update_attributes(params[:landing_page])
    redirect_to :action => 'show', :id => params[:id]
    return
  end
  
  def show
    @landing_page = LandingPage.find(params[:id])
    
     @landing_pages = LandingPage.all
  end
  
  def edit
    @landing_page = LandingPage.find(params[:id])
    
    render :action => 'new'
  end
  
  def delete_json
    @landing_page = LandingPage.find(params[:id])
    @landing_page.destroy
    
    render :layout => 'blank'
  end
  
end