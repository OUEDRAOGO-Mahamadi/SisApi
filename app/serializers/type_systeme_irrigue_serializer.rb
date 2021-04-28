class TypeSystemeIrrigueSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description
  has_many :caracteristiques
  has_many :ressources
  has_many:evenements

 
end
