class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :publisher
      t.integer :total_episodes
      t.text :description
      t.string :listennotes_url
    end
  end
end
