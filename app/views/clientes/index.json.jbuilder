json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :direccion, :fch_nacimiento, :genero, :telefono1, :telefono2, :mail, :municipio_id, :docIdentidad, :tipo_doc_id, :estado_civil_id, :tMovil
  json.url cliente_url(cliente, format: :json)
end
