class Pedido < ApplicationRecord
	enum tipo_de_pago: { 
	"Cheque" => 0,
	"Targeta de Credito" => 1,
	"Efectivo" => 2
}
end
