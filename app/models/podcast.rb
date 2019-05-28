require 'rest-client'
class Podcast < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites


  def self.all_podcasts

  response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts",
    {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
      accept: :json
    })
  @response_data = JSON.parse(response)
  # response_data["id"] = 67
  # reponse_data["name"] = "Podcasts"
  # response_data["Podcasts"][0]["id"] = podcast_id
  # response_data["Podcasts"][0]["title"] = podcast_title
  # response_data["Podcasts"][0]["genre_ids"] = related_genre_ids

  end
  def title
    @response_data["Podcasts"][0]["title"]
  end
end
