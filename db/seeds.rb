# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# u = User.new(name:"Lucas", email: "admin@admin.com", password: "12345678",password_confirmation: "12345678", role: :admin)
# u.save!

# o = User.new(name:"Hugo", email: "otaku@otaku.com", password: "12345678",password_confirmation: "12345678", role: :otaku)
# o.save

a = Anime.new(user_id: 1,name: "Dragon ball Z", description: "Goku e sua familia trazidos do epaco" ,genres: "Açao e aventura", episodes: 312, studios: "Toey animation", duration: 21, situation: "Concluido")
a.save

