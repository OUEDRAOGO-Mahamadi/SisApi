json.extract! droit_ressource, :id, :libelle, :creer, :lire, :modifier, :supprimer, :created_at, :updated_at
json.url droit_ressource_url(droit_ressource, format: :json)
