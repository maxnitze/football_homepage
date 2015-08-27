class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.integer :class_id
      t.boolean :iscup
      t.boolean :isfemale
      t.boolean :noreferee

      t.timestamps
    end
  end
end
