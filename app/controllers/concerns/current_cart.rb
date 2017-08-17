module CurrentCart
private
def set_cart
@carro = Carro.find(session[:carro_id])
rescue ActiveRecord::RecordNotFound
@carro = Carro.create
session[:carro_id] = @carro.id
end
end