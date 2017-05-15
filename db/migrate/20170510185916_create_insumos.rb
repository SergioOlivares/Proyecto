class CreateInsumos < ActiveRecord::Migration[5.0]
  def change
    create_table :insumos do |t|
      t.string :nombre
      t.integer :cantidad
      t.string :unidadmedida

      t.timestamps
    end
  end
end
