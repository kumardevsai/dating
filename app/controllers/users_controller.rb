class UsersController < ApplicationController
	def create
		@user = User.new
		if @user.save
			flash[:success] = "Thank you for signing up!"
			session[:user_id]
			redirect_to "/friends"
		else
			flash[:error] = "Error: #{@user.errors.full_messages.to_sentence}"
		end
	end



end
