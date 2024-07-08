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
  
  def destroy
    render json: {message: "Hello there!"}
  end

  def update
    @user                       = User.find_by(id: params[:id])
    @user.first_name            = params[:first_name] || @user.first_name
    @user.last_name             = params[:last_name] || @user.last_name
    @user.email                 = params[:email] || @user.email
    @user.username              = params[:username] || @user.username
    @user.password              = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    @user.prof_image            = params[:prof_image] || @user.prof_image
    @user.about_me              = params[:about_me] || @user.about_me

    if @user.save
      render template: "users/show"
    else
      render json: { ERRORs: @user.errors.full_messages}
    end
  end
  # def update
  #   @user = User.find(params[:id])
  #   if @user.update_with_password(user_update_params)
  #     render template: "users/show"
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # private

  #   def user_update_params
  #     params.require(:user).permit(:first_name, :last_name, :email, :username, :prof_image, :about_me, :password, :password_confirmation)
  #   end

end
