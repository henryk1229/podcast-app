response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=90",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=91",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=94",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=95",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=95",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=96",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=98",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end

response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=99",
      {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
        accept: :json
      })
response_data = JSON.parse(response)

seed_podcasts = response_data["podcasts"]

seed_podcasts.each do |podcast|

Podcast.create!(title: podcast["title"], publisher: podcast["publisher"], total_episodes: podcast["total_episodes"], description: podcast["description"], listennotes_url: podcast["listennotes_url"])
end
