class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:create]

  def current_user
    render json: @current_user, status: :ok
  end

  def create
    if @current_user
      render json: {error: "Cannot create a new user - already logged in as #{@current_user.email}"}, status: :bad_request
    else
      @user = User.create(user_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: {error: "Error creating user"}, status: :bad_request
      end
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end
end
