require 'rails_helper'

RSpec.describe '/players' do
    before :each do
        @lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
        @lebron = Player.create!(name: "LeBron James", player_number: 6, starting_player: true, nba_team_id:@lakers.id)
        @anthony = Player.create!(name: "Anthony Davis", player_number: 3, starting_player: true, nba_team_id:@lakers.id)
        @patrick = Player.create!(name: "Patrick Beverley]", player_number: 21, starting_player: false, nba_team_id:@lakers.id)

    end

    it 'displays the attributes of given team id' do
        visit "/players/#{@lakers.id}"
        save_and_open_page
        expect(page).to have_content(@lebron.name)
        expect(page).to have_content(@anthony.player_number)
        expect(page).to have_content(@patrick.starting_player)
    end
end
