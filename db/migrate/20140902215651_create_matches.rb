class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :league_id        null: false
      t.integer :matchday
      t.integer :home_id          null: false
      t.integer :guest_id         null: false
      t.datetime :start           null: false
      t.datetime :end             null: false
      t.integer :goals_home
      t.integer :goals_guest
      t.integer :goals_home_ht
      t.integer :goals_guest_ht
      t.integer :referee_id
      t.integer :assistant1_id
      t.integer :assistant2_id
      t.boolean :overtime
      t.boolean :penalty
      t.boolean :hncompete        null: false
      t.boolean :gncompete        null: false
      t.boolean :noreferee        null: false
      t.boolean :canceled         null: false
      t.boolean :enabled          null: false

      t.timestamps                null: false
    end
  end
end
