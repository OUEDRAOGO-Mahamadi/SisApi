class TypeRessourceSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description

  has_many :ressources
 
end
