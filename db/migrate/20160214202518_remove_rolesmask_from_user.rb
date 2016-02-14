class RemoveRolesmaskFromUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
      t.remove :roles_mask
    end
  end
end
