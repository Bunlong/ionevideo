class AddAttachmentPhotoToSingers < ActiveRecord::Migration
  def self.up
    change_table :singers do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :singers, :photo
  end
end
