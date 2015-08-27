class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :name
      t.string :description
      t.string :symbol

      t.timestamps
    end
  end
end
