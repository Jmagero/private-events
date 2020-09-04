class EventsController < ApplicationController
  include EventsHelper

  def index
    @events = Event.all
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @users = User.all
    @event_managers = EventManager.all

    @invited = []
    @attendants = []

    @event.event_managers.each do |invited|
      confirmed = invited.confirmation
      @invited << invited if confirmed == true or confirmed == 1
    end

    @users.each do |u|
      @invited.each do |invited|
        @attendants << u.username if u.id == invited.attendee_id
      end
    end

  
  end

end
