class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.boolean :ishometeam
      t.string :hometeamname
      t.boolean :isfemale
      t.integer :class_id

      t.timestamps
    end
  end
end
