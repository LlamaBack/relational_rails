# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
lebron = Player.create!(name: "LeBron James", player_number: 6, starting_player: true, nba_team_id:lakers.id)
anthony = Player.create!(name: "Anthony Davis", player_number: 3, starting_player: true, nba_team_id:lakers.id)
patrick = Player.create!(name: "Patrick Beverley", player_number: 21, starting_player: false, nba_team_id:lakers.id)

warriors = NbaTeam.create!(name: "Golden State Warriors", championship_wins: 7, western_conference: true)

clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
paul = Player.create!(name:"Paul George", player_number: 13, starting_player: true,nba_team_id:clippers.id)

celtics = NbaTeam.create!(name: "Boston Celtics", championship_wins: 17, western_conference: false)
bucks = NbaTeam.create!(name: "Milwaukee Bucks", championship_wins: 2, western_conference: false)

