class RemoveNewstextColumsFromNews < ActiveRecord::Migration
  def change
  	change_table :news do |t|
      t.remove :title, :subtitle, :abstract, :text
    end
  end
end
