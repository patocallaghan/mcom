class AdminApi::MessagesController < ApplicationController
  def create
    content = user.messages.create(message_params)
  end

  private def user
    @user ||= User.find(params[:user_id])
  end

  private def message_params
    params.permit(:content, :user_id)
  end
end
