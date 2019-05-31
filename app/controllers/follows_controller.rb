class FollowsController < ApplicationController

  def create
    user = User.find(params[:id])
    current_user.follow(user)
    flash[:message] = "Now following #{user.username}"
    redirect_to user_path(current_user)

  end

  def destroy

    user = Follow.find(params[:id]).followed
    current_user.unfollow(user)
    flash[:message] = "#{user.username} has been removed from your following list"
    redirect_to user_path(current_user)

  end

end
