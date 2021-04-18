json.extract! type_evenement, :id, :libelle, :description, :created_at, :updated_at
json.url type_evenement_url(type_evenement, format: :json)
