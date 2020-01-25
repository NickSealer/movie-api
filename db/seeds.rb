# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = ["Batman The Dark Knight", "Man of Steel", "Star Wars", "The Lord of The Rings", "Captain America"]
date = Date.today
5.times do |i|
  Movie.create(name: movies[i], description: "This movie is cool because everyone loves the movie #{movies[i]}.", function_from: date.to_s, function_to: (date +15).to_s)
end

Reservation.create(name: "Elon", lastname: "Musk", identification: "123456789", email: "elonMusk@spaceX.com", celphone: "123456789", movie_id: Movie.first.id)
