class DropPodcastsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :podcasts 
  end
end
