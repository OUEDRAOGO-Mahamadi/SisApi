json.extract! ressource,langue_ids, :id, :nom, :date_creation, :derniere_date_maj, :date_debut_publication, :date_fin_publication, :statut, :video, :image, :description, :url, :format_id, :utilisateur_id, :type_ressource_id,:created_at, :updated_at
json.url ressource_url(ressource, format: :json)
