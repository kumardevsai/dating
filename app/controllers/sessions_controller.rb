class SessionsController < ApplicationController

  def create
    if @user = User.find_by_email(params[:email]) and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/messages"
    else
      redirect_to root_path
    end
  end

end
