class RemoveCreatedAndEmailFromNewsComment < ActiveRecord::Migration
  def change
    remove_column :news_comments, :created
    remove_column :news_comments, :email
  end
end
