require 'rails_helper'

RSpec.describe '/nba_teams/:id/players' do
    before :each do
        @lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
        @lebron = Player.create!(name: "LeBron James", player_number: 6, starting_player: true, nba_team_id:@lakers.id)
        @anthony = Player.create!(name: "Anthony Davis", player_number: 3, starting_player: true, nba_team_id:@lakers.id)
        @patrick = Player.create!(name: "Patrick Beverley", player_number: 21, starting_player: false, nba_team_id:@lakers.id)

        @clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
        @paul = Player.create!(name:"Paul George", player_number: 13, starting_player: true,nba_team_id:@clippers.id)
    end

    it 'displays the attributes of given team id' do
        visit "/nba_teams/#{@lakers.id}/players"
        expect(page).to have_content(@lebron.name)
        expect(page).to have_content(@anthony.player_number)
        expect(page).to have_content("Is not a starting player.")
        expect(page).to_not have_content(@paul.player_number)
    end
end
