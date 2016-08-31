class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name,                null: false
      t.string :officestreet
      t.string :officepostalcode
      t.string :officetown
      t.string :stadiumstreet
      t.string :stadiumpostalcode
      t.string :stadiumtown
      t.string :homepage
      t.string :crest
      t.string :description

      t.timestamps                   null: false
    end
  end
end
