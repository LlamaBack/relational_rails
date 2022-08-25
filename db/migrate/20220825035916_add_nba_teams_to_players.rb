class AddNbaTeamsToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :nba_team, foreign_key: true
  end
end
