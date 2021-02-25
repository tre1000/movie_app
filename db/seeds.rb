# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Actor.create(first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock")
# Actor.create(first_name: "Michael", last_name: "Cera", known_for: "Superbad")
# Actor.create(first_name: "Jake", last_name: "Gyllenhaal", known_for: "Donnie Darko")
# Actor.create(first_name: "Jack", last_name: "Black", known_for: "High Fidelity")

10.times do
  Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
end
