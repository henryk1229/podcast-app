class FollowsController < ApplicationController


  def create
    user = User.find(params[:id])
    current_user.follow(user)
    flash[:message] = "Now following #{user.username}"
    redirect_to user_path(current_user)

  end

  def destroy
    byebug
    user = Follow.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end

end
