class EventManagersController < ApplicationController
  def new
    @event_manager = EventManager.new
    @users = User.all
  end

  def create
    @event_manager = EventManager.new(event_manager_params)
    if @event_manager.save
        redirect_to root_path, notice: "You send the invitation!"
    else
        redirect_to root_path, notice: "An error happened you can't send the invitation."
    end
  end


  def event_manager_params
    params.require(:event_manager).permit(:attendee_id, :attended_event_id)
  end

end
