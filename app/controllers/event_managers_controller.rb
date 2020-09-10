class EventManagersController < ApplicationController
  def new
    @event_manager = EventManager.new
    @users = User.all
    @user = current_user
  end

  def create
    @event_manager = EventManager.new(event_manager_params)

    if @event_manager.save
      redirect_to root_path, notice: 'You sent the invitation!'
    else
      redirect_to root_path, notice: "An error happened and you can't send the invitation."
    end
  end

  def event_manager_params
    params.require(:event_manager).permit(:attendee_id, :attended_event_id)
  end

  def update
    @event_manager = EventManager.find(params[:id])

    @event_manager.update_attribute(:confirmation, params[:confirmation] = true)
    @event = @event_manager.attended_event_id

    redirect_to event_path(@event)
  end
end
