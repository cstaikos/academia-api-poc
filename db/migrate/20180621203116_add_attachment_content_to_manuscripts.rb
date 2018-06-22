class AddAttachmentContentToManuscripts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :manuscripts do |t|
      t.attachment :content
    end
  end

  def self.down
    remove_attachment :manuscripts, :content
  end
end
