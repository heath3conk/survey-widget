class SessionController < ApplicationController

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      login(@user)
      redirect_to pages_path
    else
      redirect_to new_session_path(@user), flash: { error: "Invalid credentials, please try again." }
    end
  end

  def new
    @user = User.new
  end

  def logout
    session.delete(:user_id)
    redirect_to pages_path
  end

  def login(user)
    session[:user_id] = user.id
  end

end