json.extract! produit, :id, :nom, :prix, :type_id, :created_at, :updated_at
json.url produit_url(produit, format: :json)
