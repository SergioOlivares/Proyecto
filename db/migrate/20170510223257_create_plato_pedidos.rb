class CreatePlatoPedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :plato_pedidos do |t|
      t.references :plato, foreign_key: true
      t.references :pedido, foreign_key: true

      t.timestamps
    end
  end
end
