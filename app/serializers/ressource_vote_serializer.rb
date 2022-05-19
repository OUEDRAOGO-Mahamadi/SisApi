class RessourceVoteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ressource
  has_one :vote
end
