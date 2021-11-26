class SousTypeRessourceSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :description, :sigle, :ressources
  has_many:ressources
end
