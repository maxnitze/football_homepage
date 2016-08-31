class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :surname,     null: false
      t.string :givenname,   null: false
      t.integer :clubid,     null: false

      t.timestamps           null: false
    end
  end
end
