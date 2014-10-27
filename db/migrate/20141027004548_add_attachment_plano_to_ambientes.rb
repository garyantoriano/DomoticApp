class AddAttachmentPlanoToAmbientes < ActiveRecord::Migration
  def self.up
    change_table :ambientes do |t|
      t.attachment :plano
    end
  end

  def self.down
    remove_attachment :ambientes, :plano
  end
end
