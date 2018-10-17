# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create(name: "Yankees", city: "New York")

Team.create(name: "Dodgers", city: "Los Angeles")

Player.create(name: "Omar Gonzalez", team_id: 1, foreigner: false, jersey_number: 23)

Player.create(name: "Roger Vera", team_id: 2, foreigner: true, jersey_number: 30)

Player.create(name: "Chris", team_id: 1, foreigner: false, jersey_number: 6)

Player.create(name: "Max", team_id: 1, foreigner: false, jersey_number: 7)
