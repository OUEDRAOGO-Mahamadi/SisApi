class UniteAdministrativeSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :code
  has_many :ressources
  has_many :evenements
end
