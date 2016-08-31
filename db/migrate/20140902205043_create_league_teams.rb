class CreateLeagueTeams < ActiveRecord::Migration
  def change
    create_table :league_teams do |t|
      t.integer :league_id        null: false
      t.integer :team_id          null: false
      t.string :picture
      t.string :picturecaption
      t.integer :squadleague_id
      t.boolean :unsubscribed     null: false
      t.integer :wincount
      t.integer :losecount
      t.integer :remiscount
      t.integer :goalsshot
      t.integer :goalsgot

      t.timestamps                null: false
    end
  end
end
