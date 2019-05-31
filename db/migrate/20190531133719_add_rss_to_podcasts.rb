class AddRssToPodcasts < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :rss, :string
  end
end
