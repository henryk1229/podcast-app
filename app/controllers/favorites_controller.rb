class FavoritesController < ApplicationController


  def create
    podcast = Podcast.find(params[:podcast_id])
    current_user.add_favorite(podcast)
    flash[:message] = "#{podcast.title} has been added to your favorites"
    redirect_to user_path(current_user)

  end

    def destroy

      podcast = Podcast.find(params[:podcast_id])
      current_user.remove_favorite(podcast)
      flash[:message] = "#{podcast.title} has been removed from your favorites"
      redirect_to user_path(current_user)

    end

end
