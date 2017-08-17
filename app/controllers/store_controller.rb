class StoreController < ApplicationController
	
  def index
  	@reservas = Reserva.order(:Nombre)
  end
end
