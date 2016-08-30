class AddBirthdayToReferee < ActiveRecord::Migration
  def change
    add_column :referees, :birthday, :datetime
  end
end
