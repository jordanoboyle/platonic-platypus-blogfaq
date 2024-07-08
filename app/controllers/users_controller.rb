class UsersController < ApplicationController


  def create
    @user                       = User.new()
    @user.first_name            = params[:first_name]
    @user.last_name             = params[:last_name]
    @user.email                 = params[:email]
    @user.username              = params[:username]
    @user.password              = params[:password]
    @user.password_confirmation = params[:password_confirmation]

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
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end

  def update
    render json: {message: "Hello there!"}
  end

  def destroy
    render json: {message: "Hello there!"}
  end
end
