class RemovePictureFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :picture, :string
  end
end
