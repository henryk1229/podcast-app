Podcast.delete_all

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts",
  {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
    accept: :json
  })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

  seed_podcasts.each do |podcast|

    Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
  end
