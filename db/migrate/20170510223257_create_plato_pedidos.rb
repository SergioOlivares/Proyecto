class CreatePlatoPedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :plato_pedidos do |t|

      t.timestamps
    end
  end
end
