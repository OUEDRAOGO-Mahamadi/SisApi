class RessourceAuteurSerializer < ActiveModel::Serializer
  attributes :id
  has_one :auteur
  has_one :ressource
end
