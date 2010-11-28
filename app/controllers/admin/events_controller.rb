class Admin::EventsController < AdminController
  
  def index 
    @events = Event.upcoming
  end
  
  def new
    @event = Event.new(params[:event])
    render :action => 'edit'
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(params[:event])
    
    if @event.save
      redirect_to :action => 'show', :id => @event
    else
      render :action => 'edit'
    end
  end
  
  def update
    @event = Event.new(params[:event])
    
    if @event.save
      redirect_to :action => 'show', :id => @event
    else
      render :action => 'edit'
    end    
  end
end