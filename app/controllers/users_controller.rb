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
			redirect_to home_user_path @user.id
		else
			flash[:error] = "Error: #{@user.errors.full_messages.to_sentence}"
			redirect_to root_path
		end
	end

	def current_user
		return @current_user if @current_user

		if session[:user_id]
	    @current_user = User.find(session[:user_id])
		end
	end

	def home
		current_user
 		if current_user.nil?
			redirect_to root_path
		end
	end

	private
		def user_params
			params.permit[:name, :email, :password]
		end

end
