class UsersController < ApplicationController


	def new
		@user = User.new
	end

	def create
		@user = User.new
		@user.name = params[:name]
		@user.email = params[:email]
		@user.password = params[:password]
		if @user.save
			flash[:success] = "Thank you for signing up!"
			session[:user_id]
			redirect_to "/friends"
		else
			flash[:error] = "Error: #{@user.errors.full_messages.to_sentence}"
		end
	end

	def current_user
    @current_user ||= User.find(id: session[:user_id])
  end

	private
		def user_params
			params.permit[:name, :email, :password]
		end

end
