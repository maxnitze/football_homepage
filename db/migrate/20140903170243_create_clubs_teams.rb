class CreateClubsTeams < ActiveRecord::Migration
  def change
    create_table :clubs_teams, id: false do |t|
      t.integer :club_id, null: false
      t.integer :team_id, null: false
    end
  end
end
