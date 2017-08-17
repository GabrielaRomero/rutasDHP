class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.text :direccion
      t.string :email
      t.integer :tipo_de_pago

      t.timestamps
    end
  end
end
