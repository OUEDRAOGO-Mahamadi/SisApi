class TypeSystemeIrrigueSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description
  belongs_to :caracteristique
end
