class MotCleSerializer < ActiveModel::Serializer
  attributes :id,:libelle,:evenements
  # has_many :ressources
  # has_many :evenements
end
