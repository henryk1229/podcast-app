class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
  end


private


  def user_params(*args)
    params.require(:user).permit(:username)
  end
end
