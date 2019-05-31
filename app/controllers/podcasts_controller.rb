class PodcastsController < ApplicationController

  def index
    if logged_in?
      @podcasts = Podcast.all

    else
      render 'sessions/new'
    end
  end

  def show
    @podcast = Podcast.find(params[:id])

  end


end
