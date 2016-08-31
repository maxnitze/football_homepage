class UserRolePermissionsRoles < ActiveRecord::Migration
  def change
    create_table :user_role_permissions_roles do |t|
      t.integer :user_role_id,            null: false
      t.integer :user_role_permission_id, null: false

      t.timestamps                        null: false
    end
  end
end
