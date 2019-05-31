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











 # User.create(username: "tha_funky_1", first_name: "Prince", last_name: "Rogers Nelson", email: "the_artist@yahoo.com", password: "password", bio: "Dearly Beloved...")
 # User.create(username: "cool_Hand", first_name: "Paul", last_name: "Newman", email: "me@newmansown.org", password: "password", bio: "Listening to pods over here, boss.")
 # User.create(username: "bossypants", first_name: "Tina", last_name: "Fey", email: "liz@lemonparty.net", password: "password", bio: "I like the ham.")
 # User.create(username: "manontherun", first_name: "Paul", last_name: "McCartney", email: "paul@thebeatles.com", password: "password", bio: "They said I was the cute one.")
 # User.create(username: "dame_Judy", first_name: "Judy", last_name: "Dench", email: "j.dench@gmail.com", password: "password", bio: "In pursuit of audio!")
