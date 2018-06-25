class UsersController < ApplicationController
  def current_user
    render json: @current_user, status: :ok
  end
end
