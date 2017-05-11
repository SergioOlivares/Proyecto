class CreateProveedorInsumos < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedor_insumos do |t|
      t.integer :precio
      t.references :proveedor, foreign_key: true
      t.references :insumo, foreign_key: true

      t.timestamps
    end
  end
end
