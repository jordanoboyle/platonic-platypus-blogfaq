class UsersController < ApplicationController


  def create
    @user                       = User.new()
    @user.first_name            = "Jimmy"
    @user.last_name             = "Neutron"
    @user.email                 = "jimmy@email.com"
    @user.username              = "jimmy2011"
    @user.password              = "password"
    @user.password_confirmation = "password"

    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { ERRORs: @user.errors.full_messages}
    end
  end

  def index
    @users = User.all
    render template: "users/index"
  end

  def show
    render json: {message: "Hello there!"}
  end

  def update
    render json: {message: "Hello there!"}
  end

  def destroy
    render json: {message: "Hello there!"}
  end
end
