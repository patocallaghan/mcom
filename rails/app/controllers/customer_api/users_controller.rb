class CustomerApi::UsersController < ApplicationController
  def ping
    user = User.where(email: params[:email]).first_or_create
    render json: user.messages.unread.map(&:as_json)
  end
end
