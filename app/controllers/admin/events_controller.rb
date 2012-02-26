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
  
  def update
    id = params[:event][:id]
    if id.to_i != 0
      @event = Event.find(id)
      if @event.update_attributes!(params[:event])
        redirect_to :action => 'index'
      else
        render :action => 'edit'
      end
    else 
      @event = Event.new(params[:event])
      if @event.save
        redirect_to :action => 'index'
      else
        render :action => 'edit'
      end
    end
  end
end