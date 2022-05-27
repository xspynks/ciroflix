# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  Video.create!(title: "Ciro Gomes na CEO Conference 2022 | BTG Pactual", description: "Descrição do Cirão.", category: 2, active: true, youtube_id: "fre4rhk4kg8" , youtube_url: "https://youtube.com/watch?v=fre4rhk4kg8")
end