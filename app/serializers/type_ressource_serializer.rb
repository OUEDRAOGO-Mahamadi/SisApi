class TypeRessourceSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :sigle
  has_many :ressources
end
