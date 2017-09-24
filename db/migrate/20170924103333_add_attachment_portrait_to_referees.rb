class AddAttachmentPortraitToReferees < ActiveRecord::Migration
    def self.up
      change_table :referees do |t|
        t.attachment :portrait
      end
    end
  
    def self.down
      remove_attachment :referees, :portrait
    end
  end
  