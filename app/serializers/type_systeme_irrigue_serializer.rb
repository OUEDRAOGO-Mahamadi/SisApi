class TypeSystemeIrrigueSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description
  belongs_to :caracteristique
  has_many :ressources
end
