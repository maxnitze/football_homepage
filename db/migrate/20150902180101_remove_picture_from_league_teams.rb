class RemovePictureFromLeagueTeams < ActiveRecord::Migration
  def change
    remove_column :league_teams, :picture, :string
  end
end
