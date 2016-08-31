class CreateUserRolePermissions < ActiveRecord::Migration
  def change
    create_table :user_role_permissions do |t|
      t.string :symbol,       null: false
      t.string :description,  null: false

      t.timestamps            null: false
    end
  end
end
