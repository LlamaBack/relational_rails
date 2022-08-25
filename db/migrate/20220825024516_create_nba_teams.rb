class CreateNbaTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :nba_teams do |t|
      t.string :name
      t.integer :championship_wins
      t.boolean :western_conference
      t.timestamps
    end
  end
end
