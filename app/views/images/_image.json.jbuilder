json.extract! image, :id, :taille, :file, :created_at, :updated_at
json.url image_url(image, format: :json)
