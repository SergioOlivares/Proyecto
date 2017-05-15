class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
      t.integer :rut
      t.string :nombre
      t.integer :telefono
      t.string :direccion
      t.string :cargo
      t.string :turno

      t.timestamps
    end
  end
end
