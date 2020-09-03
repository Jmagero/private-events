class EventManagersController < ApplicationController
  def new
    @event_manager = EventManager.new
    @users = User.all
  end

  def create
    @event_manager = EventManager.new(event_manager_params)
    @event_manager.save
  end

  def event_manager_params
    params.require(:event_manager).permit(:attendee_id, :attended_event_id)
  end
end
