class PlayersController < ApplicationController
    def index
        @nba_team = NbaTeam.find(params[:id])
        @players = @nba_team.players
    end
end