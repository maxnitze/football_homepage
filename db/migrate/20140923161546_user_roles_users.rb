class UserRolesUsers < ActiveRecord::Migration
  def change
    create_table :user_roles_users do |t|
      t.integer :user_id
      t.integer :user_role_id

      t.timestamps null: false
    end
  end
end
