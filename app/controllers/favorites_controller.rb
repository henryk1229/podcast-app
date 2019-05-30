class FavoritesController < ApplicationController


  def create
    podcast = Podcast.find(params[:podcast_id])
    current_user.add_favorite(podcast)
    flash[:message] = "#{podcast.title} has been added to your favorites"
    redirect_to user_path(current_user)

  end

  # def create
  #   user = User.find(params[:id])
  #   current_user.follow(user)
  #   flash[:message] = "Now following #{user.username}"
  #   redirect_to user_path(current_user)
  #
  # end

    def destroy
      favorite = Favorite.find(params[:id])
      current_user.remove_favorite(favorite)
      flash[:message] = "#{@podcast.title} has been removed from your favorites"
      redirect_to user_path(current_user)
      byebug

    end

  # def destroy
  #   user = Follow.find(params[:id]).followed
  #   current_user.unfollow(user)
  #   flash[:message] = "#{user.username} has been unfollowed"
  #   redirect_to user_path(current_user)
  #
  # end

end
