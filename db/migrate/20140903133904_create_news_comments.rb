class CreateNewsComments < ActiveRecord::Migration
  def change
    create_table :news_comments do |t|
      t.integer :news_id,   null: false
      t.integer :user_id,   null: false
      t.string :name,       null: false
      t.string :email,      null: false
      t.datetime :created,  null: false
      t.string :text,       null: false

      t.timestamps          null: false
    end
  end
end
