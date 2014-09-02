class CreateMatchPlayers < ActiveRecord::Migration
  def change
    create_table :match_players do |t|
      t.integer :match_id
      t.integer :player_id
      t.integer :position
      t.integer :backnumber

      t.timestamps
    end
  end
end
