json.extract! reserva, :id, :Nombre, :descripcion, :image_url, :precio, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
