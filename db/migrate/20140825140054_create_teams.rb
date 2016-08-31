class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name          null: false
      t.boolean :ishometeam   null: false
      t.string :hometeamname
      t.boolean :isfemale     null: false
      t.integer :class_id     null: false

      t.timestamps            null: false
    end
  end
end
