# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new(name:"Lucas", email: "admin@admin.com", password: "12345678",password_confirmation: "12345678", role: :admin)
u.save!

o = User.new(name:"Hugo", email: "otaku@otaku.com", password: "12345678",password_confirmation: "12345678", role: :otaku)
o.save

anime1 = Anime.new(anime_id: 20 ,user_id: 2)
anime1.save

anime2 = Anime.new(anime_id: 1426 ,user_id: 2)
anime2.save



