class UsersController < ApplicationController
  before_action :find_post, only: %i[show update edit destroy]

  def new
    @action = 'Create New'
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
    @action = 'Update'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.notice = "User '#{@user.username.titleize}' Created!"
      redirect_to new_user_path
    else
      render :new 
    end
  end

  def update
    if @user.update(user_params)
      flash.notice = "User '#{@user.username.titleize}' Updated!"
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    flash.notice = 'User deleted'
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end

  def find_post
    @user = User.find(params[:id])
  end
end
