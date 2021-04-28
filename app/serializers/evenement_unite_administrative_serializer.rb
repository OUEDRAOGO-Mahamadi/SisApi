class EvenementUniteAdministrativeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :evenement
  has_one :unite_administrative
end
