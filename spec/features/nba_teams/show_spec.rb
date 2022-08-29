require 'rails_helper'

RSpec.describe '/nba_teams/:id page' do
    before :each do
        @lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
        @lebron = Player.create!(name: "LeBron James", player_number: 6, starting_player: true, nba_team_id:@lakers.id)
        @anthony = Player.create!(name: "Anthony Davis", player_number: 3, starting_player: true, nba_team_id:@lakers.id)
        @patrick = Player.create!(name: "Patrick Beverley", player_number: 21, starting_player: false, nba_team_id:@lakers.id)

        @clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
    end

    it 'displays the attributes of given team id' do
        visit "/nba_teams/#{@lakers.id}"
        expect(page).to have_content(@lakers.name)
        expect(page).to have_content(@lakers.championship_wins)
        expect(page).to have_content(@lakers.western_conference)
        expect(page).to_not have_content(@clippers.name)
    end

    it 'displays the number of players of that respective team' do
        visit "/nba_teams/#{@lakers.id}"
        expect(page).to have_content(@lakers.players_count)
        visit "/nba_teams/#{@clippers.id}"
        expect(page).to have_content(@clippers.players_count)
    end

    it 'gives a link to the players index of that team' do
        visit "/nba_teams/#{@lakers.id}"
        expect(page).to have_content("List of Players")
        save_and_open_page
        click_link("List of Players")
        expect(current_path).to eq("/nba_teams/#{@lakers.id}/players")
    end
end
