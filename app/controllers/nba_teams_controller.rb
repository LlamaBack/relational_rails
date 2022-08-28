class NbaTeamsController < ApplicationController
    def index
        @nba_teams = NbaTeam.order(created_at: :desc)
    end

    def show
        @nba_team = NbaTeam.find(params[:team_id])
    end

    def players_index
        @nba_team = NbaTeam.find(params[:team_id])
        @players = @nba_team.players
    end
end