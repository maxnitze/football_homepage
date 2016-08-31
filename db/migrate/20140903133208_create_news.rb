class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title,        default: '', null: false
      t.string :subtitle,     default: '', null: false
      t.string :abstract,     default: '', null: false
      t.string :text,         default: '', null: false
      t.integer :author_id,   null: false
      t.integer :editor_id
      t.integer :edit_count,  default: 0, null: false

      t.timestamps            null: false
    end
  end
end
