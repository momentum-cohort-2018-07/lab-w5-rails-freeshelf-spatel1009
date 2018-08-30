require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Destroys all books and resets, no duplicates
require 'faker'
Book.destroy_all 
User.destroy_all

10.times do |l|
User.create(
    name: Faker::Name.name, 
    password: Faker::Internet.password(10,20),email: Faker::Internet.email)
end 

100.times do |l|
    Book.create(
        title: Faker::Book.unique.title, author: Faker::Name.unique.name, 
        url: Faker::Internet.url,
        description: Faker::Lorem.sentence, user: User.order("RANDOM()").first)
end