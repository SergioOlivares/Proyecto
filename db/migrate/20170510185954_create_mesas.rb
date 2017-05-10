class CreateMesas < ActiveRecord::Migration[5.0]
  def change
    create_table :mesas do |t|
      t.integer :cantidadpersonas
      t.text :ubicacion

      t.timestamps
    end
  end
end
