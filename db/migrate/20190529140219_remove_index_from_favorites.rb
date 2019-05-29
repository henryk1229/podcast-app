class RemoveIndexFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :index_favorites_on_users_id, :index
  end
end
