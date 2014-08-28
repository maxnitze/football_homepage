class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :officestreet
      t.string :officepostalcode
      t.string :officetown
      t.string :stadiumstreet
      t.string :stadiumpostalcode
      t.string :stadiumtown
      t.string :homepage
      t.string :crest
      t.string :description

      t.timestamps
    end
  end
end
