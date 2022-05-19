json.extract! vote, :id, :description, :user_id, :etoile, :created_at, :updated_at
json.url vote_url(vote, format: :json)
