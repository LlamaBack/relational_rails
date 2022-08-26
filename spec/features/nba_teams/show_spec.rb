require 'rails_helper'

RSpec.describe '/nba_teams/:id page' do
    before :each do
        @lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
        @clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
    end

    it 'displays the attributes of given team id' do
        visit "/nba_teams/#{@lakers.id}"
        expect(page).to have_content(@lakers.name)
        expect(page).to have_content(@lakers.championship_wins)
        expect(page).to have_content(@lakers.western_conference)
        expect(page).to_not have_content(@clippers.name)
    end
end
