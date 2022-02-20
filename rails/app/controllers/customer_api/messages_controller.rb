class CustomerApi::MessagesController < ApplicationController
  def read
    message = Message.find(params[:message_id])
    message.read!
    render json: message.as_json
  end
end
