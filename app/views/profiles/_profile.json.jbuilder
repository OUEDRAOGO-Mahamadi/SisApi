json.extract! profile, :id, :libelle, :description,droit_ressource_id,:droit_evenement_id,:droit_expert_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
