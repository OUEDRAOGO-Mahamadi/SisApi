json.extract! type_ressource, :id, :libelle, :sigle, :description, :created_at, :updated_at
json.url type_ressource_url(type_ressource, format: :json)
