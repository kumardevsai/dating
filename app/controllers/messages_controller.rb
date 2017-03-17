class MessagesController < ApplicationController
  def create
		Message.create(sender_id: @current_user.id, receiver_id: params[:receiver_id])
  end
end
