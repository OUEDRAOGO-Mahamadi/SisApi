class LeFormatSerializer < ActiveModel::Serializer
  attributes :id,:code, :libelle
  has_many:ressources
end
