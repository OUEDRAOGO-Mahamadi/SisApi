json.extract! ressource, :id, :nom,:derniere_date_consulte, :date_debut_publication, :date_fin_publication, :statut, :video,:description, :url, :le_format_id, :utilisateur_id, :type_ressource_id,:created_at, :updated_at
json.url ressource_url(ressource, format: :json)
