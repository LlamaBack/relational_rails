class NbaTeamsController < ApplicationController
    def index
        @nba_teams = NbaTeam.all
    end

    def show
        @nba_team = NbaTeam.find(params[:id])
    end
end