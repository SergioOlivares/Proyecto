class CreateInsumoPlatos < ActiveRecord::Migration[5.0]
  def change
    create_table :insumo_platos do |t|
      t.integer :cantidadusada
      t.string :unidadmedida
      t.references :insumo, foreign_key: true
      t.references :plato, foreign_key: true

      t.timestamps
    end
  end
end
