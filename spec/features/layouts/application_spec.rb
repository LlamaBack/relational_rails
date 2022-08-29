require 'rails_helper'

RSpec.describe 'displays info necessary for every page' do
    before :each do
        @lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
        @lebron = Player.create!(name: "LeBron James", player_number: 6, starting_player: true, nba_team_id:@lakers.id)
        @anthony = Player.create!(name: "Anthony Davis", player_number: 3, starting_player: true, nba_team_id:@lakers.id)
        @patrick = Player.create!(name: "Patrick Beverley", player_number: 21, starting_player: false, nba_team_id:@lakers.id)

        @clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
        @paul = Player.create!(name:"Paul George", player_number: 13, starting_player: true,nba_team_id:@clippers.id)
    end

    it 'links to the nba team index and the players index on every page' do
        visit("/nba_teams")
        expect(page).to have_content "NBA Teams Index"
        expect(page).to have_content "Players Index"
        click_link("NBA Teams Index")
        expect(current_path).to eq("/nba_teams")
  
        visit("/nba_teams/#{@lakers.id}")
        expect(page).to have_content "NBA Teams Index"
        expect(page).to have_content "Players Index"
        click_link("NBA Teams Index")
        expect(current_path).to eq("/nba_teams")
  
        visit("/players")
        expect(page).to have_content "NBA Teams Index"
        expect(page).to have_content "Players Index"
        click_link("Players Index")
        expect(current_path).to eq("/players")
  
        visit("/players/#{@lebron.id}")
        save_and_open_page
        expect(page).to have_content "NBA Teams Index"
        expect(page).to have_content "Players Index"
        click_link("Players Index")
        expect(current_path).to eq("/players")
  
    end


end