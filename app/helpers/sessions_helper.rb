module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user

  end

  def log_out
    session.delete(:user_id)
  end

end
