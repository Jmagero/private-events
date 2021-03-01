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
    @upcoming_events = current_user.attended_events.upcoming
    @previous_events = current_user.attended_events.past

    @user.event_managers.each do |invite|
      @pending_invitations << invite if invite.confirmation.zero?
    end
  end
end
