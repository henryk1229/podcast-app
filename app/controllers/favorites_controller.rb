class FavoritesController < ApplicationController

  def new

  end

  def index

  end

  def show

  end

  def create
    @favorite = Favorite.create(params)

  end
end
