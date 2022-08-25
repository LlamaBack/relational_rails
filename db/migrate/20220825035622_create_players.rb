class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :player_number
      t.boolean :starting_player

      t.timestamps
    end
  end
end
