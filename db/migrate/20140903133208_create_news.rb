class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.integer :team_id
      t.string :topic
      t.integer :author
      t.string :author_name
      t.datetime :created
      t.integer :edit_count
      t.datetime :edit_time
      t.string :abstract
      t.string :text

      t.timestamps
    end
  end
end
