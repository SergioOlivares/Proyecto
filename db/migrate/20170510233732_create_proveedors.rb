class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedors do |t|
      t.string :rut_integer
      t.string :nombre
      t.string :direccion
      t.integer :telefono
      t.string :mail

      t.timestamps
    end
  end
end
