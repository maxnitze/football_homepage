class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :surname
      t.string :givenname
      t.datetime :birthday
      t.string :picture
      t.integer :position
      t.integer :leg

      t.timestamps
    end
  end
end
