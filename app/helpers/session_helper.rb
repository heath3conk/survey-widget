module SessionHelper

  def logged_in?
    session[:user_id]
  end

  def current_user
    if logged_in?
      User.find(session[:user_id])
    end
  end

  def authenticate!
    redirect_to pages_path unless logged_in?
  end

  def authorize!
    redirect_to pages_path unless current_user.role == "Course Author"
  end

end