class EventsController < ApplicationController
  
  def index
    @title = "All Events"
    @events = Event.upcoming
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def signup
    @event = Event.find(params[:id])
  end
end
