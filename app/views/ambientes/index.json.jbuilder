json.array!(@ambientes) do |ambiente|
  json.extract! ambiente, :id, :ambiente, :sistema_domotico_id
  json.url ambiente_url(ambiente, format: :json)
end
