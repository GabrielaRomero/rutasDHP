class AddPedioToLineItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :line_items, :pedido, foreign_key: true
  end
end
