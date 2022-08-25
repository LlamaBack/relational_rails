class NbaTeamsController < ApplicationController
    def index
        @nba_teams = NbaTeam.all
    end
end