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
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      log_in @user
      flash.now[:success] = "Welcome to the Sample App!"
      redirect_to users_path(@user)
    else
      flash.now[:notice] = "#{@user.errors.messages.first[0]} "+"#{@user.errors.messages.first[1][0]}"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path(@user)
    else
      flash.now[:notice] = "invalid update"
      render :edit
    end
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    redirect_to login_path
  end


private


  def user_params(*args)
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password)
  end
end
