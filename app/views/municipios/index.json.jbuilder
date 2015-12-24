json.array!(@municipios) do |municipio|
  json.extract! municipio, :id, :nombre_departamento, :nombre_municipio, :nombre_centro_poblado, :nombre
  json.url municipio_url(municipio, format: :json)
end
