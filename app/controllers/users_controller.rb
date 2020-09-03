class UsersController < ApplicationController
  include UsersHelper
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    @pending_invitations = []

    @user.attended_events.each do |invite|
      confirmed = invite.confirmation
      @pending_invitations << invite if confirmed == false
    end

  end

end
