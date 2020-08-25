class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user 
      session[:user_id] = user.id
      redirect_to user_path(user), notice: "Successfully logged in!"
    end
  end
end
