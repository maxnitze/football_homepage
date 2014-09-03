class CreateClubsTeams < ActiveRecord::Migration
  def change
    create_table :clubs_teams, id: false do |t|
      t.integer :club_id
      t.integer :team_id
    end
  end
end
