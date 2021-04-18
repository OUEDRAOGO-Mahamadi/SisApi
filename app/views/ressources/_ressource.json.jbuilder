json.extract! ressource, :id, :nom, :date_creation, :derniere_date_maj, :date_debut_publication, :date_fin_publication, :statut, :video, :image, :description, :url, :format_id, :langue_id, :mot_cle_id, :utilisateur_id, :unite_administrative_id, :thematique_id, :type_systeme_irrigue_id, :type_ressource_id, :profile_id, :created_at, :updated_at
json.url ressource_url(ressource, format: :json)
