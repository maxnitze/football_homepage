class RenameSquadleagueToSquadleagueteamInLeagueTeam < ActiveRecord::Migration
  def self.up
    rename_column :league_teams, :squadleague_id, :squadleagueteam_id
  end

  def self.down
    rename_column :league_teams, :squadleagueteam_id, :squadleague_id
  end
end
