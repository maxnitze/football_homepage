class CreateUserRolePermissions < ActiveRecord::Migration
  def change
    create_table :user_role_permissions do |t|
      t.string :symbol
      t.string :description

      t.timestamps null: false
    end
  end
end
