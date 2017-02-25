class SessionsController < ApplicationController

  def create
    if @user = User.find_by_email(params[:email]) and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to messages_user_path @user.id
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
