class AddAttachmentPictureToLeagueTeams < ActiveRecord::Migration
  def self.up
    change_table :league_teams do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :league_teams, :picture
  end
end
