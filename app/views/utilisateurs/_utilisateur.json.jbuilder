json.extract! utilisateur, :id, :nom,:prenom, :adresse, :fonction, :email, :status, :telephone,:password, :profile_id, :structure_id, :categorie_id,:created_at, :updated_at
json.url utilisateur_url(utilisateur, format: :json)
