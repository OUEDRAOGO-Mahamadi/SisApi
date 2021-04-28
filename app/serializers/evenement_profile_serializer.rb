class EvenementProfileSerializer < ActiveModel::Serializer
  attributes :id
  has_one :evenement
  has_one :profile
end
