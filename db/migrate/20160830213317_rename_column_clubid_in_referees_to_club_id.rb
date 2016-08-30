class RenameColumnClubidInRefereesToClubId < ActiveRecord::Migration
  def change
    rename_column :referees, :clubid, :club_id
  end
end
