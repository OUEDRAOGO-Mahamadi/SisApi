class TypeSystemeIrrigueSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description, :evenements
  has_many :caracteristiques
  has_many :ressources
  has_many:evenements
  has_many:utilisateurs

 
end
