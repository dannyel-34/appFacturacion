json.array!(@detalles) do |detalle|
  json.extract! detalle, :id, :nombre_pro, :cantidad, :precio_u, :iva, :total_pre, :total_iva, :factura_id, :producto_id
  json.url detalle_url(detalle, format: :json)
end
