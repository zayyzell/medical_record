class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    return render action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to edit_user_medical_record_path(@user), notice: 'Created user'
  end

  private
  def user_params
    params.
      require(:user).
      permit(:email,
      :password,
      :password_confirmation)
  end
end
