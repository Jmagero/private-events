class EventManagersController < ApplicationController
  
  def create
    @event_manager = Eventmanager.create(attendee_id = params[:user])
  end
end
