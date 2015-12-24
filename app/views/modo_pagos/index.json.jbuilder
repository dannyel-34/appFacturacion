json.array!(@modo_pagos) do |modo_pago|
  json.extract! modo_pago, :id, :nombre, :otros_detalle
  json.url modo_pago_url(modo_pago, format: :json)
end
