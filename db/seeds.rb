# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  person = Person.create(
    first_name: Faker::Name.name,
    last_name: Faker::Name.last_name,
    age: rand(18...65),
    hair_color: Faker::Color.color_name,
    eye_color: Faker::Color.color_name,
    gender: Faker::Gender.binary_type,
    alive: rand(2).odd? ? true : false
  )
#   # Has many notes lets make number of notes random for each contact
#     1.times do 
#       person.teams.create(
#     name: Faker::Sports::Football.team,
#     coach: Faker::Sports::Football.coach,
#     player: Faker::Sports::Football.player,
#   )
#     end 
end
