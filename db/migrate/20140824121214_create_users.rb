class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,          null: false
      t.string :surname,       null: false
      t.string :givenname,     null: false
      t.integer :roles_mask,   null: false

      t.timestamps,            null: false
    end
  end
end
