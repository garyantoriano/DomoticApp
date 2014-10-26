class CreateSubmodulos < ActiveRecord::Migration
  def change
    create_table :submodulos do |t|
      t.string :submodulo
      t.string :modelo
      t.integer :pinesDigitales
      t.integer :pinesAnalogicos
      t.belongs_to :sistema_domotico, index: true

      t.timestamps
    end
  end
end
