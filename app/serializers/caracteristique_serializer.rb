class CaracteristiqueSerializer < ActiveModel::Serializer
  attributes :id, :libelle, :sigle, :description, :valeur
  has_many :type_systeme_irrigues
end
