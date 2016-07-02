class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if @user.role == ENV["COURSE_AUTHOR_SECRET_KEY"]
        @user.update(role: "Course Author")
      else
        @user.update(role: "Student")
      end
      session[:user_id] = @user.id
      redirect_to surveys_path
    else 
      redirect_to new_user_path(@user), flash: { error: @user.errors.messages }
    end

  end


  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :role)
    end
end