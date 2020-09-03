class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user), notice: "Successfully logged in!"
    else
      flash.alert = "username or email invalid."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_path, notice: "Logged out."
  end
end
