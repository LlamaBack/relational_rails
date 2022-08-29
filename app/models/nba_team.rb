class NbaTeam < ApplicationRecord
    has_many :players

    def players_count
        players.count
    end
end