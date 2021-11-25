class TypeSousTypeRessourceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :sous_type_ressource
  has_one :type_ressource
end
