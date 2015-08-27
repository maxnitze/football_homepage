class AddAttachmentPortraitToPlayers < ActiveRecord::Migration
  def self.up
    change_table :players do |t|
      t.attachment :portrait
    end
  end

  def self.down
    remove_attachment :players, :portrait
  end
end
