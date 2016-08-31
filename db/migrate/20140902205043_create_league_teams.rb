class CreateLeagueTeams < ActiveRecord::Migration
  def change
    create_table :league_teams do |t|
      t.integer :league_id,       null: false
      t.integer :team_id,         null: false
      t.string :picture
      t.string :picturecaption
      t.integer :squadleague_id
      t.boolean :unsubscribed,    null: false
      t.integer :wincount,        default: 0, null: false
      t.integer :losecount,       default: 0, null: false
      t.integer :remiscount,      default: 0, null: false
      t.integer :goalsshot,       default: 0, null: false
      t.integer :goalsgot,        default: 0, null: false

      t.timestamps                null: false
    end
  end
end
