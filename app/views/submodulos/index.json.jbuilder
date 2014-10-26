json.array!(@submodulos) do |submodulo|
  json.extract! submodulo, :id, :submodulo, :modelo, :pinesDigitales, :pinesAnalogicos, :sistema_domotico_id
  json.url submodulo_url(submodulo, format: :json)
end
