class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.save!
    current_user
    redirect_to home_user_path(@current_user.id)
  end  
  
  def new
    current_user
    @message = Message.new
    @my_friend = User.find_by_id(params[:id])
    # redirect_to messages_new_user_path
  end 

  private 

  def message_params 
    params.require(:message).permit(:receiver_id, :sender_id, :body, :title)
  end
end
