class CreateLeagueTeamPlayers < ActiveRecord::Migration
  def change
    create_table :league_team_players do |t|
      t.integer :team_id,   null: false
      t.integer :league_id, null: false
      t.integer :player_id, null: false
      t.integer :position,  null: false
      t.boolean :ex,        null: false
      t.string :picture

      t.timestamps          null: false
    end
  end
end
