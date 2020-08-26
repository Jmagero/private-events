class EventsController < ApplicationController
  include EventsHelper

  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @event = Event.new
    @event.user_id = @user.id
  end
end
