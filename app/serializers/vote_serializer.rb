class VoteSerializer < ActiveModel::Serializer
  attributes :id, :description, :user_id, :etoile
end
