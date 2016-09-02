class AddTitleToNewsComment < ActiveRecord::Migration
  def change
    add_column :news_comments, :title, :string
  end
end
