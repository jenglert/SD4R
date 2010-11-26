class Admin::EventsController < AdminController
  
  def index 
    @events = Event.find(:all, :order => 'event_date desc')
  end
  
  def new
    @event = Event.new
    render :action => 'edit'
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(params[:event])
    
    if @event.save!
      redirect_to :action => 'show', :id => @event
    else
      render :action => 'edit'
    end
  end
end