json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :precio_uni, :stock, :cantidad, :category_id, :arch
  json.url producto_url(producto, format: :json)
end
