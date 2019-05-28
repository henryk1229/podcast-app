# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
response = RestClient.get("https://listen-api.listennotes.com/api/v2/best_podcasts",
  {"X-ListenAPI-Key": "96b204f3687d4e9998e5d2206af928ae",
    accept: :json
  })
response_data = JSON.parse(response)
