json.array!(@estado_civils) do |estado_civil|
  json.extract! estado_civil, :id, :nombre
  json.url estado_civil_url(estado_civil, format: :json)
end
