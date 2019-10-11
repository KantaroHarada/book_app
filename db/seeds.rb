# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Kantaro Harada",
             email: "harada.kantaroh@lmi.ne.jp",
             password:              "wrdb8084",
             password_confirmation: "wrdb8084",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

200.times do |n|
  title  = Faker::Book.title
  author = Faker::Book.author
  publisher = Faker::Book.publisher
  genre = Faker::Book.genre
  Book.create!(title: title,
               author: author,
               publisher: publisher,
               genre: genre)
end