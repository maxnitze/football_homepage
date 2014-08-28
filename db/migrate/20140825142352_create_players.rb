class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :surname
      t.string :givenname
      t.datetime :birthday
      t.string :picture
      t.integer :positionid
      t.integer :legid

      t.timestamps
    end
  end
end
