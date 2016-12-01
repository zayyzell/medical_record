class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.
                find_by(email: params[:email]).
                try(:authenticate, params[:password])
    return render action: 'new' unless @user
    session[:user_id] = @user.id
    redirect_to medical_records_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
