# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
warriors = NbaTeam.create!(name: "Golden State Warriors", championship_wins: 7, western_conference: true)
clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)

celtics = NbaTeam.create!(name: "Boston Celtics", championship_wins: 17, western_conference: false)
bucks = NbaTeam.create!(name: "Milwaukee Bucks", championship_wins: 2, western_conference: false)

