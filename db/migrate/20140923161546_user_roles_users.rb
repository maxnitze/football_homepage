class UserRolesUsers < ActiveRecord::Migration
  def change
    create_table :user_roles_users do |t|
      t.integer :user_id,       null: false
      t.integer :user_role_id,  null: false

      t.timestamps              null: false
    end
  end
end
