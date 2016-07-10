class AddAttachmentFileToPatients < ActiveRecord::Migration
  def self.up
    change_table :patients do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :patients, :file
  end
end
