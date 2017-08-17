class Order < ApplicationRecord
	enum pay_type: { 
"Cheque" => 0,
"Tarjeta de Credito" => 1,
"Deposito Bancario" => 2
}
has_many :line_items, dependent: :destroy
validates :name, :address, :email, presence: true 
validates :pay_type, inclusion: pay_types.keys

def add_line_items_from_cart(carro) 
carro.line_items.each do |item| 
item.carro_id = nil 
line_items << item 
end 
end 

end
