class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.
                find_by(email: params[:email]).
                try(:authenticate, params[:password])
    return render action: 'new' unless @user
    session[:user_id] = @user.id
    redirect_to user_medical_record_path(@user)
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
