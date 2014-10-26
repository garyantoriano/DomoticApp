json.array!(@elementos) do |elemento|
  json.extract! elemento, :id, :elemento, :pinDeConexion, :estado, :valorDeEstado, :ambiente_id, :submodulo_id
  json.url elemento_url(elemento, format: :json)
end
