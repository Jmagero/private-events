module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_log_in
    if current_user
      concat link_to current_user.username, user_path(current_user)
      link_to ' Log Out', session_path(current_user), method: :delete
    else
      concat link_to 'Sign up', new_user_path
      link_to ' Log In', new_session_path
    end
  end
end
