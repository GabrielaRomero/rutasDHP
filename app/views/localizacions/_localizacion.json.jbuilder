json.extract! localizacion, :id, :latitud, :longitud, :direccion, :descripcion, :titulo, :created_at, :updated_at
json.url localizacion_url(localizacion, format: :json)
