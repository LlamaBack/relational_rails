class PlayersController < ApplicationController
    def index
        @all_players = Player.all
    end

    def show
        @player = Player.find(params[:player_id])
    end

end