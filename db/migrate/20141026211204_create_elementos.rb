class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.string :elemento
      t.string :pinDeConexion
      t.string :estado
      t.string :valorDeEstado
      t.belongs_to :ambiente, index: true
      t.belongs_to :submodulo, index: true

      t.timestamps
    end
  end
end
