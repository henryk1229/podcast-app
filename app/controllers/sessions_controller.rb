class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user_path(user)
    else
      flash.now[:message] = 'Login failed, please try again'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_url
  end

  def home
    if logged_in?
      @user = current_user
      #redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

end
