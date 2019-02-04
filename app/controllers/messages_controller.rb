class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
      # flash[:success] = 'Message saved.'
      ActionCable.server.broadcast 'chatroom_channel',
                                   html_formatted_message: message_render(message)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: { message: message })
  end

end