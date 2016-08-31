class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :surname,     null: false
      t.string :givenname,   null: false
      t.datetime :birthday
      t.integer :position,   null: false
      t.integer :leg,        null: false

      t.timestamps           null: false
    end
  end
end
