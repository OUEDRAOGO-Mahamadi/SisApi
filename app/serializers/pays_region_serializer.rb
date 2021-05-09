class PaysRegionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :pay
  has_one :region
end
