class CreatePlatos < ActiveRecord::Migration[5.0]
  def change
    create_table :platos do |t|
      t.string :nombre
      t.integer :precio
      t.string :tipo
      t.text :descripcion

      t.timestamps
    end
  end
end
