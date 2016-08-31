class CreateNewsComments < ActiveRecord::Migration
  def change
    create_table :news_comments do |t|
      t.integer :news_id
      t.integer :user_id
      t.string :name
      t.string :email
      t.datetime :created
      t.string :text

      t.timestamps null: false
    end
  end
end
