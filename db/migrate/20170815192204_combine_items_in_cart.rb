class CombineItemsInCart < ActiveRecord::Migration[5.1]
  def change
  end

def up
# replace multiple items for a single product in a cart with a
# single item
Carro.all.each do |carro|
# count the number of each product in the cart
sums = carro.line_items.group(:reserva_id).sum(:quantity)
sums.each do |reserva_id, quantity|
if quantity > 1
# remove individual items
carro.line_items.where(reserva_id: reserva_id).delete_all
# replace with a single item
item = carro.line_items.build(reserva_id: reserva_id)
item.quantity = quantity
item.save!
end
end
end
end

def down
# split items with quantity>1 into multiple items
LineItem.where("quantity>1").each do |line_item|
# add individual items
line_item.quantity.times do
LineItem.create(
carro_id: line_item.carro_id,
reserva_id: line_item.reserva_id,
quantity: 1
)
end
# remove original item
line_item.destroy
end
end

end
