class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update]

  def index
    @users = User.all

  end

  def show
    #@user = current_user
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
      redirect_to user_path(@user)
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
      flash[:message] = "Your Profile has been updated"
      redirect_to user_path(current_user)

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

  #relations show

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_following'

  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_followers'
  end

  # def change_avatar
  #   @user = User.find(params[:id])
  #   new_avatar = @user.set_default_avatar
  #   @user.avatar = new_avatar
  #   render 'update'
  # end

end
