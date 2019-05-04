class AddAttachmentResimToDerslers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :derslers do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :derslers, :resim
  end
end
