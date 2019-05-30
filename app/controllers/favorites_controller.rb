class FavoritesController < ApplicationController

  def index
  end

  def show

  end

  def new
    @favorite = Favorite.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @favorite = Favorite.create(user_id: params[:user_id], podcast_id: params[:podcast_id])
    redirect_to user_path(@user)
  end

  def destroy
    byebug
    @favorite = Favortie.find(params[:id]).destroy
  end

end
