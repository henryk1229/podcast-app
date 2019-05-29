class ChangeFavoriteId < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :users_id, :user_id
    rename_column :favorites, :podcasts_id, :podcast_id 
  end
end
