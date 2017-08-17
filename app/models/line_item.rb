class LineItem < ApplicationRecord
	belongs_to :order, optional: true 

  belongs_to :reserva, optional: true
  belongs_to :carro

  def total_precio
	reserva.precio * quantity
 end

end
