class PaysUniteAdministrativeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :pay
  has_one :unite_administrative
end
