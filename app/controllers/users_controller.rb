class UsersController < ApplicationController
  # require 'UsersHelper'

  def new
    @user = User.new
  end

  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    puts params[:id]
    @user = User.find(params[:id])
    puts '**************************************'
    puts '**************************************'
    puts '**************************************'
    puts '**************************************'
    puts '************Hello**************************'
    puts '**************************************'
    puts '**************************************'
    puts '**************************************'
    puts '**************************************'
    puts '**************************************'

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash.notice = "User '#{@user.username}' Updated!"
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end
