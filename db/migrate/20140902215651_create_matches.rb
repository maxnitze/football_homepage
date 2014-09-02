class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :league_id
      t.integer :matchday
      t.integer :home_id
      t.integer :guest_id
      t.datetime :start
      t.datetime :end
      t.integer :goals_home
      t.integer :goals_guest
      t.integer :referee_id
      t.integer :assistant1_id
      t.integer :assistant2_id
      t.boolean :overtime
      t.boolean :penalty
      t.boolean :hncompete
      t.boolean :gncompete
      t.boolean :noreferee
      t.boolean :canceled
      t.boolean :enabled

      t.timestamps
    end
  end
end
