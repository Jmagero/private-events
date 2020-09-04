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
    @user = User.all
    @event_managers = EventManager.all

    @invited = []
    @attendants = []

    @event.event_managers.each do |invited|
      confirmed = invited.confirmation
      @invited << invited if confirmed == true 
    end

    @users.each do |u|
      @invited.each do |ca|
        @attendants << u.name if u.id == ca
      end
    end

  
  end

end
