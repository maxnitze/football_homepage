class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :surname,    null: false
      t.string :givenname,  null: false
      t.datetime :birthday
      t.string :picture

      t.timestamps          null: false
    end
  end
end
