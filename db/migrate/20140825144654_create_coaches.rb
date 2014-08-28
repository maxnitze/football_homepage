class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :surname
      t.string :givenname
      t.datetime :birthday
      t.string :picture

      t.timestamps
    end
  end
end
