class CreateMatchPlayers < ActiveRecord::Migration
  def change
    create_table :match_players do |t|
      t.integer :match_id   null: false
      t.integer :player_id  null: false
      t.integer :position   null: false
      t.integer :backnumber null: false

      t.timestamps          null: false
    end
  end
end
