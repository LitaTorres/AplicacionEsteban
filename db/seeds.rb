# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(email: "admin@gmail.com", name: "Esteban", password: "112233", role: 1, photo: File.open(Rails.root.join('app', 'assets', 'images', 'user_photos', '1a.jpg'))) #asi es con la semillaaaaaaa
User.create!(email: "usuarionormal@gmail.com", name: "Usuario1", password: "112233", role: 0,  photo: File.open(Rails.root.join('app', 'assets', 'images', 'user_photos', '2u.jpg'))) #asi es con la semillaaaaaaa