class UsersController < ApplicationController
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    else
      flash.alert = 'fields cannot be blank!'
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @pending_invitations = []
    @upcoming_events = current_user.attended_events.where("date >= ?", DateTime.now)
    @previous_events = current_user.attended_events.where("date <= ?", DateTime.now)

    @user.event_managers.each do |invite|
      confirmed = invite.confirmation
      @pending_invitations << invite if confirmed == 0
    end
  end
end
