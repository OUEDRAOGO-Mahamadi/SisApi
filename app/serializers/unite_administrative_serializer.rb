class UniteAdministrativeSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :code,:evenements
  has_many :ressources
  has_many :evenements
  has_many:utilisateurs
end
