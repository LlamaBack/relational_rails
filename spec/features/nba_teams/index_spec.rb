require 'rails_helper'

RSpec.describe '/nba_teams page' do
    before :each do
        @lakers = NbaTeam.create!(name: "Los Angeles Lakers", championship_wins: 17, western_conference: true)
        @clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
        @celtics = NbaTeam.create!(name: "Boston Celtics", championship_wins: 17, western_conference: false)
    end

    it 'displays all nba teams' do
        visit "/nba_teams"
        expect(page).to have_content(@lakers.name)
        expect(page).to have_content(@clippers.name)
    end

    it 'displays all nba teams in order of created by' do
        warriors = NbaTeam.create!(name: "Golden State Warriors", championship_wins: 7, western_conference: true)
        sleep(1)
        bucks = NbaTeam.create!(name: "Milwaukee Bucks", championship_wins: 2, western_conference: false)
        sleep(1)
        clippers = NbaTeam.create!(name: "Los Angeles Clippers", championship_wins: 0, western_conference: true)
        visit "/nba_teams"
        # save_and_open_page
        expect(page).to have_content(@lakers.created_at)
        expect(page).to have_content(@clippers.created_at)
        expect("#{clippers.name}").to appear_before("#{bucks.name}")
        expect("#{bucks.name}").to appear_before("#{warriors.name}")
    end
end
