json.extract! format_ressource, :id, :libelle, :code, :created_at, :updated_at
json.url format_ressource_url(format_ressource, format: :json)
