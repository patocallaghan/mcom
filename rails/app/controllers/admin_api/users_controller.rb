# frozen_string_literal: true

class AdminApi::UsersController < ApplicationController
  def index
    @users = User.all
    @message = Message.new
    render json: @users.map(&:as_json)
  end
end
