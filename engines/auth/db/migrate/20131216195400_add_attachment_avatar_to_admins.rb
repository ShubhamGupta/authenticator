class AddAttachmentAvatarToAdmins < ActiveRecord::Migration
  def self.up
    change_table :auth_admins do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :auth_admins, :avatar
  end
end
