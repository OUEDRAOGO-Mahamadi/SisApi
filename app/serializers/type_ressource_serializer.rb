class TypeRessourceSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle,:icon, :description, :sous_type_ressources
  
  #has_many :ressources
  has_many :sous_type_ressources
 
end
