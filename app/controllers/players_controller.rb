class PlayersController < ApplicationController
    def index
        @all_players = Player.all
    end

    def players_by_team
        @nba_team = NbaTeam.find(params[:id])
        @players = @nba_team.players
    end
end