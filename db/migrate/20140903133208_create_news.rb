class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.integer :author_id
      t.integer :editor_id
      t.integer :edit_count, default: 0, null: false

      t.timestamps
    end
  end
end
