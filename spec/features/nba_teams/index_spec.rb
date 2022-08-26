require 'rails_helper'

RSpec.describe 'the nba teams show page of given id' do
    # As a visitor
    # When I visit '/parents/:id'
    # Then I see the parent with that id including the parent's attributes:
    # - data from each column that is on the parent table

    it 'displays the team attributes of given id' do
        # player = Player.create!(name: 'Le Bron James')
        nba_team1 = NbaTeam.create!(name: "Lakers", championship_wins: 17, western_conference: true)
        nba_team2 = NbaTeam.create!(name: "Bakers", championship_wins: 17, western_conference: true)
        visit "/nba_teams/#{nba_team1.id}"
        # save_and_open_page
        expect(page).to have_content(nba_team1.name)
        expect(page).to have_content(nba_team1.championship_wins)
        expect(page).to have_content(nba_team1.western_conference)
        expect(page).to_not have_content(nba_team2.name)
    end
end
