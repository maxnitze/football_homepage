class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :surname
      t.string :givenname
      t.integer :clubid

      t.timestamps
    end
  end
end
