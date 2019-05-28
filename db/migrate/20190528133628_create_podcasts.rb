class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :podcast
      t.string :episode 

      t.timestamps
    end
  end
end
