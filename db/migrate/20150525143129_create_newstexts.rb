class CreateNewstexts < ActiveRecord::Migration
  def change
    create_table :newstexts do |t|
      t.integer :news_id
      t.string :language,   null: false
      t.string :title,      null: false
      t.string :subtitle,   default: '', null: false
      t.string :abstract,   default: '', null: false
      t.string :text,       default: '', null: false

      t.timestamps null: false
    end
  end
end
