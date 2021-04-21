class UniteAdministrativeSerializer < ActiveModel::Serializer
  attributes :id,:libelle, :code
  has_many :ressources
end
