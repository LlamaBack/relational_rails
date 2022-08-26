require 'rails_helper'

RSpec.describe '/nba_teams page' do
    before :each do
        @lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
        @clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
    end

    it 'displays all nba teams' do
        visit "/nba_teams"
        expect(page).to have_content(@lakers.name)
        expect(page).to have_content(@clippers.name)
    end
end
