class Carro < ApplicationRecord
	has_many :line_items, dependent: :destroy

	def add_reserva(reserva)
current_item = line_items.find_by(reserva_id: reserva.id)
if current_item
current_item.quantity += 1
else
current_item = line_items.build(reserva_id: reserva.id)
end
current_item
end

def total_precio
line_items.to_a.sum { |item| item.total_precio }
end

end

