class MotCleSerializer < ActiveModel::Serializer
  attributes :id,:libelle
  has_many :ressources
end
