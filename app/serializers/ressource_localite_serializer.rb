class RessourceLocaliteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ressource
  has_one :sous_localite
end
