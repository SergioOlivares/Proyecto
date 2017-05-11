class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.string :tipopedido
      t.string :fecha
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
