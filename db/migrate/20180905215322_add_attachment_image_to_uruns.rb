class AddAttachmentImageToUruns < ActiveRecord::Migration
  def self.up
    change_table :uruns do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :uruns, :image
  end
end
