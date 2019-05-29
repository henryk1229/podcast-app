class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]

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
      flash.now[:message] = "Welcome to the Sample App!"
      redirect_to users_path(@user)
    else
      #flash.now[:message] = "#{@user.errors.messages.first[0]} "+"#{@user.errors.messages.first[1][0]}"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path(@user)
    else
      #flash.now[:message] = "invalid update"
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to login_path
  end


private


  def user_params(*args)
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end


  def correct_user
    @user = User.find(params[:id])
    redirect_to :root unless current_user?(@user)
  end

end
