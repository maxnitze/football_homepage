class CreateLeagueTeamPlayers < ActiveRecord::Migration
  def change
    create_table :league_team_players do |t|
      t.integer :team_id
      t.integer :league_id
      t.integer :player_id
      t.integer :position
      t.boolean :ex
      t.string :picture

      t.timestamps
    end
  end
end
