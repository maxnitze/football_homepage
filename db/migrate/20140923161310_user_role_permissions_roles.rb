class UserRolePermissionsRoles < ActiveRecord::Migration
  def change
    create_table :user_role_permissions_roles do |t|
      t.integer :user_role_id
      t.integer :user_role_permission_id

      t.timestamps
    end
  end
end
