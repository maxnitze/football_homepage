class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name,       default: '', null: false
      t.datetime :start,    null: false
      t.datetime :end,      null: false
      t.integer :class_id,  null: false
      t.boolean :iscup,     null: false
      t.boolean :isfemale,  null: false
      t.boolean :noreferee, null: false

      t.timestamps          null: false
    end
  end
end
