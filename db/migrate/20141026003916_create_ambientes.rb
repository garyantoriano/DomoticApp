class CreateAmbientes < ActiveRecord::Migration
  def change
    create_table :ambientes do |t|
      t.string :ambiente
      t.belongs_to :sistema_domotico, index: true

      t.timestamps
    end
  end
end
