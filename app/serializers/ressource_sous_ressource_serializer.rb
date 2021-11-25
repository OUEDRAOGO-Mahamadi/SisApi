class RessourceSousRessourceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ressource
  has_one :sous_type_ressource
end
