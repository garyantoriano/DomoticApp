class CreateSistemasDomotico < ActiveRecord::Migration
  def change
    create_table :sistemas_domotico do |t|
      t.string :nombre
      t.string :ip
      t.string :estado

      t.timestamps
    end
  end
end
